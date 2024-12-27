defmodule ElixirCodeTest do
  use ExUnit.Case
  doctest ElixirCode

  test "greets the world" do
    assert ElixirCode.hello() == :world
  end
end
