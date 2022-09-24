defmodule FizzBuzz do
  
  def get_file_content(filename), do: filename |> File.read() |> transform_list_number()


  def transform_list_number({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end 
  def transform_list_number({:error, reason}), do: "Error in read file : #{reason}" 

end
