defmodule Math do
  def sum(a, b) do
    a + b
  end
end

defmodule Geometry do
  def rectangle_area(length, width) do
    calculate_area(length, width)
  end

  defp calculate_area(length, width) do
    length * width
  end
end
defmodule Math1 do
  def even?(0), do: true
  def even?(x) when is_integer(x) and rem(x, 2) == 0, do: true
  def even?(x) when is_integer(x), do: false
end
defmodule Adder do
  def add(a, b \\ 5)

  def add(a, b) do
    a + b
  end
end

defmodule BasicTypes.ModulesAndFunctions do
  def main do
    IO.puts Math.sum(1, 2)
    IO.puts Geometry.rectangle_area(5, 3)
    IO.puts Math1.even?(0)
    IO.puts Math1.even?(4)
    IO.puts Math1.even?(7)
    IO.puts Math1.even?(-2)
    IO.puts Adder.add(4)
    IO.puts Adder.add(7,10)
  end
end
