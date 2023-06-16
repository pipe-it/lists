defmodule Evenodd do
  def split(n) do
    split([], [], n)
  end

  def split(acceven, accodd, 0) do
    [acceven |> Enum.reverse(), accodd |> Enum.reverse()]
  end

  def split(acceven, accodd, n) do
    r = rem(n, 2)

    if r == 0 do
      split([n | acceven], accodd, n - 1)
    else
      split(acceven, [n | accodd], n - 1)
    end
  end
end
