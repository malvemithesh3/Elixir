defmodule BasicTypes.ListOperations do
  def main do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    IO.puts("list: #{inspect(numbers)}")

    evens = Enum.filter(numbers, fn x -> rem(x, 2) == 0 end)
    IO.puts("even numbers list: #{inspect(evens)}")

    squared = Enum.map(evens, fn x -> x * x end)
    IO.puts("squared even numbers list: #{inspect(squared)}")

    sum = Enum.reduce(squared, 0, fn x, acc -> x + acc end)
    IO.puts("sum of squared numbers: #{sum}")
  end
end
