defmodule BasicTypes.Recursion do
  def loop_list(list) do
    Enum.each(list, fn x -> IO.puts(x*2) end)
  end
  def print_list([]), do: :ok
  def print_list([head | tail]) do
    IO.puts(head)
    print_list(tail)
  end
  #multiplying all the even numbers in the list
  def multiply_evens(numbers) do
    multiply_evens(numbers, 1)
  end
  defp multiply_evens([],acc), do: acc
  defp multiply_evens([head | tail], acc) do
    if rem(head, 2) == 0 do
      multiply_evens(tail, head*acc)
    else
      multiply_evens(tail, acc)
    end
  end
  def main do
    loop_list([2,4,6,8])
    print_list([8, 9, 0, 12])
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    IO.puts("Product of all even numbers: #{multiply_evens(numbers)}")
  end
end
