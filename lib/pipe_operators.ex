defmodule BasicTypes.PipeOperators do
  def main do
      result = 10
      |> add()
      |> multiply()
      |> subtract()

      IO.puts("Final result: #{result}")

      result1 = {3, 4}
      |> sum()
      |> (&(&1 * 2)).()
      |> (&(&1 - 3)).()

      IO.puts("Final result: #{result1}")

      numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

      result2 = numbers
      |> Enum.filter(fn x -> rem(x, 2) == 0 end)
      |> Enum.map(fn x -> x * 2 end)
      |> Enum.reduce(0, fn x, acc -> x + acc end)

      IO.puts("Final result: #{result2}")

      strings = ["apple", "banana", "cherry", "kiwi", "orange"]

      result3 = strings
      |> filter_strings()
      |> capitalize_strings()
      |> join_strings()

    IO.puts("Final result: #{result3}")

    end
    def add(x), do: x + 1
    def multiply(x), do: x * 2
    def subtract(x), do: x - 5
    def sum({a, b}), do: a + b

    def filter_strings(strings) do
      Enum.filter(strings, fn string -> String.length(string) >= 5 end)
    end

    def capitalize_strings(strings) do
      Enum.map(strings, &String.upcase/1)
    end

    def join_strings(strings) do
      Enum.join(strings, ", ")
    end
end
