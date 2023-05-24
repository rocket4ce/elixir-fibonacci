defmodule Fibonacci do
  require Integer
  @moduledoc """
  Documentation for `Fibonacci`.
  """

  @doc """

  ## Examples
      iex> Fibonacci.sum_even_fibonacci(10)
      10
  """

  def sum_even_fibonacci(number) when is_integer(number) do
    arr = [0, 1]
    sum = Enum.sum(arr)
    last_element = List.last(arr)
    new_arr = arr ++ [sum + last_element]
    sum_even_fibonacci(new_arr, number)
  end

  def sum_even_fibonacci(arr, number) do
    sum =   Enum.take(arr, -2) |> Enum.sum()
    if sum <= number do
      new_arr = arr ++ [sum]
      sum_even_fibonacci(new_arr, number)
    else
      Enum.filter(arr, fn x -> rem(x, 2) == 0 end)
      |> Enum.sum()
    end
  end

end
