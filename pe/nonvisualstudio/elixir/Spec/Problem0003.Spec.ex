# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0003.Spec.ex

Code.require_file "../Implementation/Problem0003.ex", __DIR__

ExUnit.start

defmodule Problem0003Tests do
  use ExUnit.Case, async: true

  test "primeFactors 7 should return a set of 7." do
    assert HashSet.equal?(Problem0003.primeFactors(7), createSet([7]))
  end

  test "primeFactors 10 should return a set of 2 and 5." do
    assert HashSet.equal?(Problem0003.primeFactors(10), createSet([2, 5]))
  end

  test "primeFactors 3 should return a set of 3." do
    assert HashSet.equal?(Problem0003.primeFactors(3), createSet([3]))
  end

  test "largestPrimeFactor 13195 should return 29." do
    assert Problem0003.largestPrimeFactor(13_195) == 29
  end

  test "largestPrimeFactor 123_564_655 should return 28051." do
    assert Problem0003.largestPrimeFactor(123_564_655) == 28051
  end

  test "largestPrimeFactor 99_999 should return 271." do
    assert Problem0003.largestPrimeFactor(99_999) == 271
  end

  test "largestPrimeFactor 15_268_223_965_269_025 should return 28051." do
    assert Problem0003.largestPrimeFactor(15_268_223_965_269_025) == 28051
  end

  test "largestPrimeFactor 600_851_475_143 should return 6857." do
    assert Problem0003.largestPrimeFactor(600_851_475_143) == 6857
  end

  defp createSet(list), do: (Enum.into list, HashSet.new)

end
