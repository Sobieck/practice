# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0010.Spec.ex

Code.require_file "../Implementation/Problem0010.ex", __DIR__

ExUnit.start

defmodule Problem0010Tests do
  use ExUnit.Case, async: true

  test "sumOfPrimesBelow 10 should return 17. " do
    assert Problem0010.sumOfPrimesBelow(10) == 17
  end

  test "sumOfPrimesBelow 19 should return 58. " do
    assert Problem0010.sumOfPrimesBelow(19) == 58
  end

  test "sumOfPrimesBelow 2_000_000 should return 142_913_828_922" do
    assert Problem0010.sumOfPrimesBelow(2_000_000) == 142_913_828_922
  end
end
