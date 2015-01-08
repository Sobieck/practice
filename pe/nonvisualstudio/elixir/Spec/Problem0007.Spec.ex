# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0007.Spec.ex

Code.require_file "../Implementation/Problem0007.ex", __DIR__

ExUnit.start

defmodule Problem0007Tests do
  use ExUnit.Case, async: true

  test "nthPrime 1 should return 2." do
    assert Problem0007.nthPrime(1) == 2
  end

  test "nthPrime 6 should return 13." do
    assert Problem0007.nthPrime(6) == 13
  end

  test "nthPrime 4 should return 7." do
    assert Problem0007.nthPrime(4) == 7
  end

  test "nthPrime 10_001 should return 104_743." do
    assert Problem0007.nthPrime(10_001) == 104_743
  end
end
