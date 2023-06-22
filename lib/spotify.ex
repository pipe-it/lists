defmodule Spotify do
  def read(path) do
    file_data = File.read(path)

    case file_data do
      {:error, _reason} -> "error"
      {:ok, binary} -> Jason.decode!(binary)
    end
  end

  def albums() do
  end
end
