# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0006.Spec.ex

Code.require_file "../Implementation/Problem0006.ex", __DIR__

ExUnit.start

defmodule Problem0006Tests do
  use ExUnit.Case, async: true

  test "sumOfSquaresOfNumberLine(2) should return 5." do
    assert Problem0006.sumOfSquaresOfNumberLine(2) === 5
  end

  test "sumOfSquaresOfNumberLine(10) should return 385." do
    assert Problem0006.sumOfSquaresOfNumberLine(10) === 385
  end

  test "squareOfSumsOfNumberLine(2) should return 9." do
    assert Problem0006.squareOfSumsOfNumberLine(2) === 9
  end

  test "squareOfSumsOfNumberLine(10) should return 3025." do
    assert Problem0006.squareOfSumsOfNumberLine(10) === 3025
  end

  test "differenceBetweenSquareOfSumsAndSumOfSquares(2) should return 4." do
    assert Problem0006.differenceBetweenSquareOfSumsAndSumOfSquares(2) === 4
  end

  test "differenceBetweenSquareOfSumsAndSumOfSquares(10) should return 2640." do
    assert Problem0006.differenceBetweenSquareOfSumsAndSumOfSquares(10) === 2640
  end

  test "differenceBetweenSquareOfSumsAndSumOfSquares(100) should return 25_164_150." do
    assert Problem0006.differenceBetweenSquareOfSumsAndSumOfSquares(100) === 25_164_150
  end
end
