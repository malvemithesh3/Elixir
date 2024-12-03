defmodule BasicTypes.BasicArithmetic do
  def main do
    x = 0b1010
    y = IO.gets("Enter the number:")
      |> String.trim()
      |> String.to_integer()
    IO.puts("Multiplication: #{x*y}")
    IO.puts("Sum: #{x+y}")
    IO.puts("Subtraction: #{x-y}")
    IO.puts("Division: #{x/y}")#float
    z = div(x, y)#integer
    IO.puts(is_float(z))
    z = round(z)
    IO.puts("Z: #{z}")
  end
end
