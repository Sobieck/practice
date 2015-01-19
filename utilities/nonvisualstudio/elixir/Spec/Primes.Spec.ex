# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\elixir\Spec\Primes.Spec.ex

Code.require_file "../Implementation/Primes.ex", __DIR__

ExUnit.start

defmodule PrimesTests do
  use ExUnit.Case, async: true

  test "generatePrimes 14 should return [2,3,5,7,11,13]." do
    assert Primes.generatePrimes(14) == [2,3,5,7,11,13]
  end

  test "generatePrimes 11 should return [2,3,5,7,11]." do
    assert Primes.generatePrimes(11) == [2,3,5,7,11]
  end

  test "generatePrimes 1000 should return a list of length 168." do
    assert Primes.generatePrimes(1000) |> Enum.count == 168
  end

  test "generatePrimes 10000 should return a list of length 1229." do
    assert Primes.generatePrimes(10_000) |> Enum.count == 1229
  end

  test "whatExpondentOf2CreatesAnOddNumber 220 should return [2,55]." do
    assert Primes.whatExpondentOf2CreatesAnOddNumber(220) == [2, 55]
  end

  test "whatExpondentOf2CreatesAnOddNumber 210 should return [1, 105]." do
    assert Primes.whatExpondentOf2CreatesAnOddNumber(210) == [1, 105]
  end

  test "isProbablePrime 2 should return true." do
    assert Primes.isProbablePrime(2, 128) == true
  end

  test "isProbablePrime 1 should return false." do
    assert Primes.isProbablePrime(1, 128) == false
  end

  test "isProbablePrime -1 should return false." do
    assert Primes.isProbablePrime(-1, 128) == false
  end

  test "isProbablePrime 3 should return true." do
    assert Primes.isProbablePrime(3, 128) == true
  end

  test "isProbablePrime -3 should return true." do
    assert Primes.isProbablePrime(-3, 128) == true
  end

  test "isProbablePrime -6 should return false." do
    assert Primes.isProbablePrime(-6, 128) == false
  end

  test "isProbablePrime -9 should return false." do
    assert Primes.isProbablePrime(-9, 128) == false
  end

  test "isProbablePrime 961_748_932 should return false." do
    assert Primes.isProbablePrime(961_748_932, 128) == false
  end

  test "isProbablePrime 961_748_941 should return true." do
    assert Primes.isProbablePrime(961_748_941, 128) == true
  end

  test "isProbablePrime 961_748_931 should return false." do
    assert Primes.isProbablePrime(961_748_931, 128) == false
  end

  test "isProbablePrime 221 should return false." do
    assert Primes.isProbablePrime(221, 128) == false
  end

  test "isProbablePrime 5 should return true." do
    assert Primes.isProbablePrime(5, 128) == true
  end

  test "isProbablePrime 49_979_687 should return true." do
    assert Primes.isProbablePrime(49_979_687, 128) == true
  end

  test "isProbablePrime Math.pow(2,127) - 1 should return true." do
    lucasPrime = Math.pow(2,127) - 1
    assert Primes.isProbablePrime(lucasPrime, 128) == true
  end

  test "isProbablePrime Math.pow(2,127) - 3 should return false." do
    fakeLucasPrime = Math.pow(2,127) - 3
    assert Primes.isProbablePrime(fakeLucasPrime, 128) == false
  end

  test "isProbablePrime Math.pow(2, 148) + 1 / 17 should return true." do
    ferrierPrime = div((Math.pow(2, 148) + 1), 17)
    assert Primes.isProbablePrime(ferrierPrime, 128) == true
  end

  test "isProbablePrime Math.pow(2, 148) + 1 / 17 + 2 should return false." do
    ferrierPrime = div((Math.pow(2, 148) + 1), 17) + 2
    assert Primes.isProbablePrime(ferrierPrime, 128) == false
  end
end
