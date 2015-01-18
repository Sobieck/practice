# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0029.Spec.ex

Code.require_file "../Implementation/Problem0029.ex", __DIR__

ExUnit.start

defmodule Problem0029Tests do
  use ExUnit.Case, async: true

  test "exponentiateNumberFromTwoToX 2 5 should return a Set of [4,8,16,32]." do
    expected = [4,8,16,32]

    assert HashSet.equal?(Problem0029.exponentiateNumberFromTwoToX(2,5), createSet(expected))
  end

  test "exponentiateNumberFromTwoToX 3 5 should return a Set of [9, 27, 81, 243]." do
    expected = [9, 27, 81, 243]

    assert HashSet.equal?(Problem0029.exponentiateNumberFromTwoToX(3,5), createSet(expected))
  end

  test "exponentiateNumberFromTwoToX 5 5 should return a Set of [25, 125, 625, 3125]." do
    expected = [25, 125, 625, 3125]

    assert HashSet.equal?(Problem0029.exponentiateNumberFromTwoToX(5,5), createSet(expected))
  end

  defp createSet(list), do: (Enum.into list, HashSet.new)

  test "distinctPowersBetween2And 5 should return 15." do
    assert Problem0029.distinctPowersBetween2And(5) === 15
  end

  test "distinctPowersBetween2And 4 should return 8." do
    assert Problem0029.distinctPowersBetween2And(4) === 8
  end

  test "distinctPowersBetween2And 100 should return 9183." do
    assert Problem0029.distinctPowersBetween2And(100) === 9183
  end
end
