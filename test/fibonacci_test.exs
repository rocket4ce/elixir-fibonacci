defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "return the sum of even fibonacci numbers" do
    assert Fibonacci.sum_even_fibonacci(10) == 10
  end
end
