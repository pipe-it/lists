defmodule Dataw do
  def read(path) do
    file_data = File.read(path)

    case file_data do
      {:error, reason} -> {:error, reason}
      {:ok, binary} -> Jason.decode!(binary)
    end
  end

  # fdfsdf
  def get_bucket2_lists(data) do
    Map.get(data, "aggregations")
    |> Map.get("2")
    |> Map.get("buckets")
  end

  def get_travels_keys(list) do
    Enum.map(list, fn key ->
      get_travels_key(key)
    end)
  end

  defp get_travels_key(travels_details) do
    Map.get(travels_details, "key")
  end

  def get_bucket4_lists(list) do
    Enum.map(list, fn four ->
      get_bucket4_list(four)
    end)
  end

  defp get_bucket4_list(travels_details) do
    Map.get(travels_details, "4")
    |> Map.get("buckets")
  end

  def get_bucket5_lists(list) do
    List.first(list)
    |> Enum.map(fn five ->
      get_bucket5_list(five)
    end)
  end

  defp get_bucket5_list(travels_details) do
    Map.get(travels_details, "5")
    |> Map.get("buckets")
  end

  def get_ep_lists(list) do
    List.first(list)
    |> Enum.map(fn key ->
      get_ep_list(key)
    end)
  end

  defp get_ep_list(travels_details) do
    Map.get(travels_details, "key")
  end

  def get_doc_count(data) do
    Map.get(data, "aggregations")
    |> Map.get("2")
    |> Map.get("buckets")
    |> Enum.map(fn %{"key" => key, "4" => four} ->
      four
      |> Map.get("buckets")
      |> Enum.map(fn %{"key" => ep, "5" => five} ->
        case Map.get(five, "buckets") do
          [
            %{"key_as_string" => key1, "doc_count" => key1_count},
            %{"key_as_string" => key2, "doc_count" => key2_count}
          ] ->
            %{"ep" => ep, key1 => key1_count, key2 => key2_count}

          [
            %{"key_as_string" => key = "true", "doc_count" => key_count}
          ] ->
            %{"ep" => ep, key => key_count, "false" => 0}

          [
            %{"key_as_string" => key = "false", "doc_count" => key_count}
          ] ->
            %{"ep" => ep, key => key_count, "false" => 0}
        end
      end)
      |> Enum.map(&Map.put(&1, "key", key))
    end)
  end
end
