# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\algorithms\nonvisualstudio\elixir\primes\Spec\SieveOfEratosthenes.Spec.ex

Code.require_file "../Implementation/SieveOfEratosthenes.ex", __DIR__

ExUnit.start

defmodule SieveOfEratosthenesTests do
  use ExUnit.Case, async: true

  test "eratosthenes(14) should return [2,3,5,7,11,13]." do
    assert SieveOfEratosthenes.eratosthenes(14) == [2,3,5,7,11,13]
  end

  test "eratosthenes(11) should return [2,3,5,7,11]." do
    assert SieveOfEratosthenes.eratosthenes(11) == [2,3,5,7,11]
  end

  test "eratosthenes(9) should return [2,3,5,7]." do
    assert SieveOfEratosthenes.eratosthenes(9) == [2,3,5,7]
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

  test "eratosthenes(1_000_000) should return a list of length 78_498." do
    assert SieveOfEratosthenes.eratosthenes(1_000_000) |> Enum.count == 78_498
  end

  test "eratosthenes(2_000_000) should return a list of length 148_933." do
    assert SieveOfEratosthenes.eratosthenes(2_000_000) |> Enum.count == 148_933
  end
end
