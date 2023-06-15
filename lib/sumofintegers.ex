defmodule Sumofintegers do
  def sum(n) do
    if n == 1 do
      n
    else
      n + sum(n - 1)
    end
  end
end
