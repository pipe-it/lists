defmodule Live do
  def read(path) do
    file_data = File.read(path)

    case file_data do
      {:error, _reason} -> {:error, _reason}
      {:ok, binary} -> Jason.decode!(binary)
    end
  end

  def get_price_list(map \\ %{}) do
    Map.get(map, "PriceList", [])
    |> Enum.sort_by(& &1["MealType"], :asc)
    |> List.first()
    |> Map.get("MealType")
  end
end
