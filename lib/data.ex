# I need out put in this format - this can be a map
# - Key "Wise Travel", ep: "sa", true: 8691535, false: 519317
# - Key "Ostrovok Clients", ep: "rc", true: 1100, false: 97

defmodule Data do
  def read(path) do
    file_data = File.read(path)

    case file_data do
      {:error, _reason} -> {:error, _reason}
      {:ok, binary} -> Jason.decode!(binary)
    end
  end

  def get_bucket1_lists(data) do
    Map.get(data, "aggregations")
    |> Map.get("2")
    |> Map.get("buckets")
  end

  def get_travels_keys(list) do
    Enum.map(list, fn key ->
      get_travels_key(key)
    end)
  end

  def get_travels_key(travels_details) do
    Map.get(travels_details, "key")
  end

  def get_bucket2_lists(list) do
    Enum.map(list, fn four ->
      Map.get(four, "4")
      |> Map.get("buckets")
    end)
    |> List.first()
    |> Enum.map(fn five ->
      Map.get(five, "5")
      |> Map.get("buckets")
    end)

    # |>Enum.map(fn doc -> Map.get(, "5")
    # |> Map.get("buckets")
    # end)
  end

  # def get_bucket2_list(travels_details) do
  #   Map.get(travels_details, "4")
  #   |> Map.get("buckets")
  # end

  # def get_bucket3_lists(list) do
  #   List.first(list)
  #   |>Enum.map(fn five ->
  #     get_bucket3_list(five)
  #   end)
  # end

  # def get_bucket3_list(travels_details) do
  #   Map.get(travels_details, "5")
  #   |> Map.get("buckets")
  # end
end