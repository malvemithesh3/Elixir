defmodule BasicTypes.Calculator do
  def main do
    IO.puts("Please select an operation:")
    IO.puts("1. Addition")
    IO.puts("2. Subtract")
    IO.puts("3. Multiply")
    IO.puts("4. Division")

    choice = IO.gets("Enter your choice: ")
    |> String.trim()
    |> String.to_integer()

    num1 = IO.gets("Enter the first number: ")
    |> String.trim()
    |> String.to_integer()

    num2 = IO.gets("Enter the second number: ")
    |> String.trim()
    |> String.to_integer()

    result =
      case choice do
        1 -> add(num1, num2)
        2 -> subtract(num1, num2)
        3 -> multiply(num1, num2)
        4 -> division(num1, num2)
        _ -> IO.puts("Invalid choice")
             :error
      end

    if result != :error do
      IO.puts("Result: #{result}")
    end
  end

  defp add(a, b), do: a + b
  defp subtract(a, b), do: a - b
  defp multiply(a, b), do: a * b
  defp division(a, b), do: a/b
end
