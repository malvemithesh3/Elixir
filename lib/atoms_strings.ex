defmodule BasicTypes.AtomsAndStrings do
  def main do
    string1 = "Mithesh"
    IO.puts(:Hello)
    age = 23
    IO.puts("My name is #{string1}, age is #{age}")
    IO.puts("Length of #{string1}: #{String.length(string1)}")
    IO.puts("Upcase of #{string1}: #{String.upcase(string1)}")
    string2 = String.to_atom(string1)
    IO.puts("Is 'Mithesh' is the atom? #{is_atom(string2)}")
  end
end
