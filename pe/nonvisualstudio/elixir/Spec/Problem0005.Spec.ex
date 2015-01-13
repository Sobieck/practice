# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0005.Spec.ex

Code.require_file "../Implementation/Problem0005.ex", __DIR__

ExUnit.start

defmodule Problem0005Tests do
  use ExUnit.Case, async: true

  test "lcmOfList(10) should return 2520." do
    assert Problem0005.lcmOfList(10) == 2520
  end

  test "lcmOfList(11) should return 27720." do
    assert Problem0005.lcmOfList(11) == 27720
  end

  test "lcmOfList(20) should return 232_792_560." do
    assert Problem0005.lcmOfList(20) == 232_792_560
  end
end
