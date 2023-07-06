# defmodule Datar do
#   def read(path) do
#     file_data = File.read(path)

#     case file_data do
#       {:error, reason} -> {:error, reason}
#       {:ok, binary} -> Jason.decode!(binary)
#     end
#   end

#   def get_doc_count(data) do
#     Map.get(data, "aggregations")
#     |> Map.get("2")
#     |> Map.get("buckets")
#     |> Enum.map(fn %{"key" => key, "4" => four} ->
#       four
#       |> Map.get("buckets")
#       |> Enum.map(fn %{"key" => ep, "5" => five} ->
#         five
#         # |> Enum.reduce(five, fn doc,
#         #                         [
#         #                           %{"key_as_string" => key1, "doc_count" => key1_count},
#         #                           %{"key_as_string" => key2, "doc_count" => key2_count}
#         #                         ] ->
#         #   %{
#         #     key1 => key1_count,
#         #     key2 => key2_count,
#         #     "date" => "2023-06-28 00:00:00"
#         #   }

#         # end) 

#         # |> Enum.map(&Map.put(&1, "key", ep))
#       end)

#       # |> Enum.map(&Map.put(&1, "key", key))
#     end)

#     # |> List.flatten()
#   end
# end
