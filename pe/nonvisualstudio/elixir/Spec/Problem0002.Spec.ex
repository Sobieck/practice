# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0002.Spec.ex

Code.require_file "../Implementation/Problem0002.ex", __DIR__

ExUnit.start

defmodule Problem0002Tests do
  use ExUnit.Case, async: true

  test "fibsLessThan 5 should return [1, 2, 3]" do
    assert Problem0002.fibsLessThan(5) == [1, 2, 3]
  end

  test "fibsLessThan 90 should return [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]" do
    assert Problem0002.fibsLessThan(90) == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  end

  test "filterEvens [1, 3, 5, 7, 9] should return []." do
    assert Problem0002.filterEvens([1, 3, 5, 7, 9]) == []
  end

  test "filterEvens 1..10 should return [2, 4, 6, 8, 10]." do
    assert Problem0002.filterEvens(1..10) == [2, 4, 6, 8, 10]
  end

  test "sumOfEvenFibsLessThan 10 should return 10." do
    assert Problem0002.sumOfEvenFibsLessThan(10) == 10
  end

  test "sumOfEvenFibsLessThan 100 should return 44." do
    assert Problem0002.sumOfEvenFibsLessThan(100) == 44
  end

  test "sumOfEvenFibsLessThan 4_000_000 should return 44." do
    assert Problem0002.sumOfEvenFibsLessThan(4_000_000) == 4_613_732
  end
end
