defmodule BasicTypes.Functions do
  def main do
    add = fn x, y -> x + y end
    result = add.(5, 3)
    IO.puts("Sum: #{result}")
    numbers = [1, 2, 3, 4]
    squared_numbers = Enum.map(numbers, fn x -> x * x end)
    IO.puts(inspect(squared_numbers))
    add = &(&1 + &2)
    result = add.(123, 56)
    IO.puts("Sum: #{result}")
    double = fn a -> add.(a, a) end
    IO.puts("Double: #{double.(12)}")
    f = fn
      x, y when x > 20 -> x + y
      x, y -> x * y
    end
    IO.puts(f.(19, 10))
    fun = &**/2
    IO.puts(fun.(2, 4))
    fun1 = &"Hello, #{&1}, your percentage is #{(&2 + &3)/2}%"
    IO.puts(fun1.("Mithesh", 98, 87))
  end
end
