defmodule Decoder do
  def read(path) do
    file_data = File.read(path)

    case file_data do
      {:error, _reason} -> "error"
      {:ok, binary} -> Jason.decode!(binary)
    end
  end

  def get_hotel_list(data) do
    %{"Success" => %{"PriceDetails" => %{"HotelList" => list}}} = data
    list
  end

  def get_rate_plan_lists(list) do
    Enum.map(list, fn hotel ->
      %{"RatePlanList" => ratelist} = hotel
      [h | _t] = Enum.sort_by(ratelist, & &1["TotalPrice"], :asc)

      %{"HotelID" => id} = hotel
      Map.put(h, "HotelID", id)
    end)
  end
end
