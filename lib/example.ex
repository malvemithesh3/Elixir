defmodule BasicTypes.Example do

  def main do
    time = DateTime.new!(Date.new!(2024, 12, 27), Time.new!(23, 50, 0, 0), "Etc/UTC")
    time_still = DateTime.diff(time, DateTime.utc_now())
    IO.puts(time_still)

    days = div(time_still, 86_400)
    IO.puts(days)
    hours = div(rem(time_still, 86_400), 60 * 60)
    IO.puts(hours)
    minutes = div(rem(time_still,60 * 60 ), 60)
    IO.puts(minutes)
    seconds = rem(time_still, 60)
    IO.puts(seconds)

    IO.puts("Time untill new year: #{days} days, #{hours} hours, #{minutes} minutes, #{seconds} seconds.")

  end
end
