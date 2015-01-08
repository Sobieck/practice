# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\elixir\Spec\Math.Spec.ex

Code.require_file "../Implementation/Math.ex", __DIR__

ExUnit.start

defmodule MathTests do
  use ExUnit.Case, async: true

  test "generatePrimes 14 should return [2,3,5,7,11,13]." do
    assert Math.generatePrimes(14) == [2,3,5,7,11,13]
  end

  test "generatePrimes 11 should return [2,3,5,7,11]." do
    assert Math.generatePrimes(11) == [2,3,5,7,11]
  end

  test "generatePrimes 1000 should return a list of length 168." do
    assert Math.generatePrimes(1000) |> Enum.count == 168
  end

  test "generatePrimes 10000 should return a list of length 1229." do
    assert Math.generatePrimes(10_000) |> Enum.count == 1229
  end

end
