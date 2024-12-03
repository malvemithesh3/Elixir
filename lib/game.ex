defmodule BasicTypes.Game do
  def main do
    correct = :rand.uniform(11) - 1
    IO.puts(correct)
    guess = IO.gets("Guess a number between 0 and 10: ") |> String.trim() |> Integer.parse()
    IO.inspect(guess)
    case guess do
      {result, _}->
        IO.puts("Parse Successful #{result}")

        if result === correct do
          IO.puts("You Win!")
        else
          IO.puts("You lose!")
        end
      :error -> IO.puts("Something Went Wrong")
    end

    # IO.puts(elem(guess, 0))

    # if String.to_integer(guess) == correct do
    #   IO.puts("You win!")
    # else
    #   IO.puts("You lose!")
    # end

  end
end
