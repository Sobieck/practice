# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0028.Spec.ex

Code.require_file "../Implementation/Problem0028.ex", __DIR__

ExUnit.start

defmodule Problem0028Tests do
  use ExUnit.Case, async: true

  test "sumOfBoxLevel 5 should return 76." do
    assert Problem0028.sumOfBoxLevel(5) == 76
  end

  test "sumOfBoxLevel 3 should return 24." do
    assert Problem0028.sumOfBoxLevel(3) == 24
  end

  test "sumOfSpiralDiagonals 1 should return 1." do
    assert Problem0028.sumOfSpiralDiagonals(1) == 1
  end

  test "sumOfSpiralDiagonals 5 should return 101." do
    assert Problem0028.sumOfSpiralDiagonals(5) == 101
  end

  test "sumOfSpiralDiagonals 3 should return 25." do
    assert Problem0028.sumOfSpiralDiagonals(3) == 25
  end

  test "sumOfSpiralDiagonals 1001 should return 669_171_001." do
    assert Problem0028.sumOfSpiralDiagonals(1001) == 669_171_001
  end
end
