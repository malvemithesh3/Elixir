defmodule BasicTypes.Comprehensions do
  def main do
    list = for n <- 2..5,  do: n * n
    list1 = for n <- 0..5, rem(n, 2) == 0, do: n * n
    IO.inspect(list)
    IO.inspect(list1)
    new_list = for i <- list, j <- list1, do: {i,j}
    IO.inspect(new_list)
    map = %{a: 1, b: 2, c: 3, d: 4}
    new_map = for {key, value} <- map, value > 2, do: {key, value * 10}
    IO.inspect(new_map)
    pixels = <<213, 45, 132, 64, 76, 32, 76, 0, 0, 234, 32, 15>>
    new_pixels = for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
    IO.inspect(new_pixels)
    numbers = [1, 2, 3, 4, 5]
    squares = for n <- numbers, into: [], do: n * n
    IO.inspect(squares)
  end
end
