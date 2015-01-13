# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\elixir\Spec\Seq.Spec.ex

Code.require_file "c:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/elixir/Implementation/Seq.ex", __DIR__

ExUnit.start

defmodule SeqTests do
  use ExUnit.Case, async: true

  test "pmap(1..10, fn (elem) -> (elem * elem) end) should return Enum.map(1..10, fn(elem) -> elem * elem) end." do
    assert Seq.pmap(1..10, fn (elem) -> (elem * elem) end) == Enum.map(1..10, fn(elem) -> elem * elem end)
  end

  test "pmap(1..100, fn (elem) -> (elem * elem) end) should return Enum.map(1..100, fn(elem) -> elem * elem) end." do
    assert Seq.pmap(1..100, fn (elem) -> (elem * elem) end) == Enum.map(1..100, fn(elem) -> elem * elem end)
  end

end
