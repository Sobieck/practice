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

  test "gcd(990,210) should return 30." do
    assert Math.gcd(990, 210) === 30
  end

  test "gcd(210,990) should return 30." do
    assert Math.gcd(210, 990) === 30
  end

  test "gcd(952,624) should return 8." do
    assert Math.gcd(952, 624) === 8
  end

  test "gcd(624,952) should return 8." do
    assert Math.gcd(624, 952) === 8
  end

  test "lcm(65,50) should return 650." do
    assert Math.lcm(65,50) === 650
  end

  test "lcm(10,4) should return 20." do
    assert Math.lcm(10,4) === 20
  end

  test "pow 100 10 should return 100_000_000_000_000_000_000." do
    assert Math.pow(100,10) === 100_000_000_000_000_000_000
  end

  test "pow 5 5 should return 3_125." do
    assert Math.pow(5,5) === 3_125
  end

end
