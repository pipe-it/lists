defmodule Evenodd do
  def sort(n) do
    sort([], [], n)
  end

  def sort(acceven, accodd, 0) do
    [acceven |> Enum.reverse(), accodd |> Enum.reverse()]
  end

  def sort(acceven, accodd, n) do
    r = rem(n, 2)

    if r == 0 do
      sort([n | acceven], accodd, n - 1)
    else
      sort(acceven, [n | accodd], n - 1)
    end
  end
end
