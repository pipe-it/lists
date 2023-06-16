defmodule Oddeven do
  def split(list) do
    split([], [], list)
  end

  def split(acceven, accodd, []) do
    [acceven |> Enum.reverse(), accodd |> Enum.reverse()]
  end

  def split(acceven, accodd, [h | t]) do
    r = rem(h, 2)

    if r == 0 do
      split([h | acceven], accodd, t)
    else
      split(acceven, [h | accodd], t)
    end
  end
end
