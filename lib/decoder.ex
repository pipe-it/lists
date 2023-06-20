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

  def get_hotel_ids(list) do
    Enum.map(list, fn hotel ->
      get_hotel_id(hotel)
    end)
  end

  def get_hotel_id(hotel_details) do
    %{"HotelID" => id} = hotel_details
    id
  end

  def get_rate_plan_lists(list) do
    Enum.map(list, fn hotel ->
      sortlist = get_rate_plan_list(hotel)
      [h | _t] = Enum.sort_by(sortlist, & &1["TotalPrice"], :asc)
      h
    end)
  end

  def get_rate_plan_list(hotel_details) do
    %{"RatePlanList" => ratelist} = hotel_details
    ratelist
  end

  def get_least_price(hotel_details, list) do
    [get_hotel_id(hotel_details), get_rate_plan_lists(list)]
  end
end
