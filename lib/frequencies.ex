defmodule Frequencies do
  def freq(list) do
    freq(%{}, list)
  end

  def freq(acc, []) do
    acc
  end

  def freq(acc, [k | t]) do
    acc =
      Map.update(acc, k, 1, fn existing_value ->
        existing_value + 1
      end)

    freq(acc, t)
  end
end
