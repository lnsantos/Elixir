defmodule FizzBuzzTest do
  use ExUnit.Case

  test "when process file then result must be list numbers with fizz and fizzbuzz" do 
    expected = {:ok, [1, :fizz, :fizzbuzz]}
    actual = FizzBuzz.get_file_content("./test/resources/fizzbuzz/valid.txt")

    assert actual == expected
  end

  test "when process file not valid then result must be error message" do 
    expected = {:error, "Error in read file: enoent"}
    actual = FizzBuzz.get_file_content("./test/resources/fizzbuzz/invalid.txt")

    assert actual == expected
  end 
end
