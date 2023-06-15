defmodule Picklist do
  @moduledoc """
  This is the Pick list Module.
  """
  @doc """
  Picks the numbers in a list upto given value

  Returns a list.
  """
  def pick(list, v) do
    pick([], list, v)
  end

  defp pick(acc, [], _v) do
    IO.puts("Value do not exist")

    acc
    |> Enum.reverse()
  end

  defp pick(acc, [v | _t], v) do
    acc
    |> Enum.reverse()
  end

  defp pick(acc, [h | t], v) do
    pick([h | acc], t, v)
  end
end
