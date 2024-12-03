defmodule BasicTypes.ListAndTuples do
  def main do
    list1 = [1, 2, 3, 10]
    list2 = [4, 5, 6]
    concat = list1 ++ list2
    IO.puts("concatenation of two list: #{inspect(concat)}")
    list3 = [2, 8, 9]
    sub = list1 -- list3
    IO.puts(inspect(sub))
    IO.puts("Head of the List: #{hd(concat)}\n Tail of the List: #{inspect(tl(concat))}")
    list4 = [0] ++ list1
    IO.puts("New List: #{inspect(list4)}")
    tuple1 = {:hello, "Mithesh", "World"}
    IO.puts("Tuple: #{inspect(tuple1)}")
    IO.puts("Size of the Tuple: #{tuple_size(tuple1)}")
    IO.puts(elem(tuple1, 2))
    new_tuple = put_elem(tuple1, 2, "Happy")
    IO.puts("New Tuple: #{inspect(new_tuple)}")
    string = "Hello beautiful world"
    IO.puts("splitted string: #{inspect(String.split(string))}")
    string1 = "Good Morning"
    list5 = String.split_at(string1, 2)
    IO.puts("New list: #{inspect(list5)}")
    string2 = "Happy Birthday"
    list6 = String.split_at(string2, -5)
    IO.puts("list: #{inspect(list6)}")
  end
end
