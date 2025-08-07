defmodule KenyaTest do
  use ExUnit.Case
  doctest Kenya

  test "greets the world" do
    assert Kenya.hello() == :world
  end
end
