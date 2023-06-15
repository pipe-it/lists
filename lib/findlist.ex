defmodule Findlist do
  def find([], _e) do
    false
  end

  def find([h | t], e) do
    if e == h do
      true
    else
      find(t, e)
    end
  end
end
