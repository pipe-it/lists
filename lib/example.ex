# defmodule Example do
#   import SweetXml
#   def read(path) do
#     file_data = File.read(path)

#     case file_data do
#       {:error, _reason} ->
#         "error"
#       {:ok, string} ->
#         string
#         |> to_charlist()
#         |> :xmerl_scan.string()
#     end
#   end
# end

%{
  :todos => %{
    :todo => [
      %{:id => "1", :body => "This is the body of to-do item #1", :priority => "1"},
      %{:id => "2", :body => "This is the body of to-do item #2", :priority => "2"},
      %{:id => "3", :body => "This is the body of to-do item #3", :priority => "3"},
      %{:id => "4", :body => "This is the body of to-do item #4", :priority => "4"},
      %{:id => "5", :body => "This is the body of to-do item #5", :priority => "5"},
      %{:id => "6", :body => "This is the body of to-do item #6", :priority => "6"}
    ]
  }
}
