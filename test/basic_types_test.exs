defmodule BasicTypesTest do
  use ExUnit.Case
  doctest BasicTypes

  test "greets the world" do
    assert BasicTypes.hello() == :world
  end
end
