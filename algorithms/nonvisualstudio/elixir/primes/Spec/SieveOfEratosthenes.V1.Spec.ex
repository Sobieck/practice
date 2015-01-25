# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\algorithms\nonvisualstudio\elixir\primes\Spec\SieveOfEratosthenes.V1.Spec.ex

Code.require_file "../Implementation/SieveOfEratosthenes.V1.ex", __DIR__

ExUnit.start

defmodule SieveOfEratosthenesTests do
  use ExUnit.Case, async: true

  test "eratosthenes(14) should return [2,3,5,7,11,13]." do
    assert SieveOfEratosthenes.eratosthenes(14) == [2,3,5,7,11,13]
  end

  test "eratosthenes(11) should return [2,3,5,7,11]." do
    assert SieveOfEratosthenes.eratosthenes(11) == [2,3,5,7,11]
  end

  test "eratosthenes(1000) should return a list of length 168." do
    assert SieveOfEratosthenes.eratosthenes(1000) |> Enum.count == 168
  end

  test "eratosthenes(10_000) should return a list of length 1229." do
    assert SieveOfEratosthenes.eratosthenes(10_000) |> Enum.count == 1229
  end

  test "eratosthenes(100_000) should return a list of length 9_592." do
    assert SieveOfEratosthenes.eratosthenes(100_000) |> Enum.count == 9_592
  end
end
