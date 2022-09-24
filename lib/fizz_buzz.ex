defmodule FizzBuzz do
  
  def get_file_content(filename) do
    filename |> File.read() |> handler_filename()
  end 

  def handler_filename({:ok, result}), do: result 
  def handler_filename({:error, reason}), do: reason 

end
