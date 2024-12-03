defmodule BasicTypes.PatternMatching do
  def main do
    x = 1
    1 = x
    IO.puts(x)
    {x, o_, y, result} = {:welcome, "to","Tech world", 67}
    IO.puts("Guys #{x} #{o_} Advance #{y} at road no #{result}")
    [head | tail] = [1, 2, 3, 8, 9, 0]
    IO.puts("Head: #{inspect(head)}\nTail: #{inspect(tail)}")
    a = 12
    [^a, b, c] = [12, 10, 100]
    IO.puts("a: #{a}\nb: #{b}\nc: #{c}")
    [hi | _] = [1, 2, 3]
    IO.puts("hi: #{inspect(hi)}")
  end
end
