defmodule FizzBuzz do
  
  def get_file_content(filename), do: filename |> File.read() |> transform_list_number()

  defp transform_list_number({:ok, result}) do
    data = result
    |> String.split(",")
    |> Enum.map(&convert_from_string_to_numbers/1)
    
    {:ok, data}
  end 

  defp transform_list_number({:error, reason}), do: {:error, "Error in read file: #{reason}"}

  def convert_from_string_to_numbers(result) do
    result
    |> String.to_integer()
    |> convert_evaluates()
  end 

  defp convert_evaluates(number), do: number |> validate_value()

  defp validate_value(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp validate_value(number) when rem(number, 3) == 0, do: :fizz
  defp validate_value(number) when rem(number, 5) == 0, do: :buzz
  defp validate_value(number), do: number 

end
