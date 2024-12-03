defmodule BasicTypes.Enumerables do
  def main do
    list1 = [9, 7, 6]
    list2 = Enum.map(list1, fn x -> x * 2  end)
    list3 = Enum.map(%{12 => 7, 2 => 9}, fn {k, v} -> k * v  end)
    list4 = Enum.reduce(list1, 0, fn x, acc -> x + acc end)
    IO.inspect(list2)
    IO.inspect(list3)
    IO.puts("Sum of numbers: #{list4}")
    numbers = [98, 78, 77, 34, 11, 0]
    even_numbers = Enum.filter(numbers, fn x -> rem(x, 2) == 0 end)
    IO.puts("Even numbers: #{inspect(even_numbers)}")
    IO.puts("Each number in the list: ")
    Enum.each(numbers, fn x -> IO.puts(x) end)
    lazy_result = Stream.map(numbers, fn x -> x * 2 end)
    IO.puts("Lazy result (before): #{inspect(lazy_result)}")
    final_result = Enum.to_list(lazy_result)
    IO.puts("Lazy result (after): #{inspect(final_result)}")
    list5 = Stream.cycle([1, 2, 3])
    filtered_stream = Stream.filter(list5, fn x -> rem(x, 2) == 0 end)
    result1 = filtered_stream
    |> Stream.take(10)
    |> Enum.to_list()
    IO.inspect(result1)
  end
end
