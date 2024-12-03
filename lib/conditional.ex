defmodule BasicTypes.Conditional do
  def main do
    status = ["Gold", "Silver", "Diamond"]
    case hd(status) do
      "Gold"-> IO.puts("Gold is present in the status")
      :NON -> IO.puts("not found in the status")
      _ -> IO.puts("out")
    end
    a = [1, 2, 3]
    case a do
      [4, 5, 6] -> IO.puts("This clause won't match")
      [1, x, 3] when x > 1 -> IO.puts("This will match and x = #{x}")
      _ -> IO.puts("This would match any value")
    end
    IO.puts("Head of the List: #{hd(a)}")
    if hd(status) === "Gold" do
      IO.puts("Come In")
    else
      IO.puts("Get Lost")
  end
  is_raining = true
    unless is_raining do
      IO.puts("It's not raining. You can go outside!")
    else
      IO.puts("It's raining. Better stay inside.")
  end
  cond do
    tl(status) == ["Diamond"] -> IO.puts("This is not true")
    hd(a) ==! 1 -> IO.puts("This is False")
    true -> IO.puts("This is definitely true")
  end
  end
end
