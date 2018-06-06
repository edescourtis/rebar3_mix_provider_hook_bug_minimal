defmodule ElixirAppExampleTest do
  use ExUnit.Case
  doctest ElixirAppExample

  test "greets the world" do
    assert ElixirAppExample.hello() == :world
  end
end
