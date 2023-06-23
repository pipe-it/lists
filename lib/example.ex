defmodule Example do
  # import SweetXml

  def read(path) do
    file_data = File.read(path)

    case file_data do
      {:error, _reason} ->
        "error"

      {:ok, string} ->
        string
        |> to_charlist()
        |> :xmerl_scan.string()
    end
  end
end
