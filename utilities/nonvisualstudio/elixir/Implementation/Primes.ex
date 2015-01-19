# To use:
# Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Primes.ex", __DIR__

Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Math.ex", __DIR__

defmodule Primes do
  def generatePrimes(maxInclusive) do
    _generatePrimes(2..maxInclusive |> Enum.take(maxInclusive), [])
  end

  # based on http://en.wikipedia.org/wiki/Miller%E2%80%93Rabin_primality_test
  def isProbablePrime(n, accuracy) when n < 0,          do: isProbablePrime(abs(n), accuracy)
  def isProbablePrime(1, _),                            do: false      
  def isProbablePrime(n, _)        when n < 4,          do: true
  def isProbablePrime(n, _)        when rem(n,2) === 0, do: false

  def isProbablePrime(n, accuracy) do
    _isProbablePrime(n, accuracy, 0)
  end

  #FOR PRIMALITY TESTING
  def whatExpondentOf2CreatesAnOddNumber(n), do: _whatExpondentOf2CreatesAnOddNumber(n, [0,n])

  defp _isProbablePrime(_, accuracy, i) when accuracy === i, do: true
  defp _isProbablePrime(n, accuracy, i) do
    randomNumber = :random.uniform(n-3) + 1
    nMinusOne = n - 1

    [exponent, odd] = whatExpondentOf2CreatesAnOddNumber(nMinusOne)

    remainder = Math.powMod(randomNumber, odd, n)

    if remainder === 1 or remainder === nMinusOne do
      _isProbablePrime(n, accuracy, i + 1)
    else
      _compositeTest(n, accuracy, i, exponent - 1, remainder)
    end
  end

  defp _compositeTest(_, _, _, 0, _), do: false
  defp _compositeTest(n, accuracy, overallI, s, remainder) do

    newRemainder = Math.pow(remainder, 2) |> rem(n)

    cond do
      newRemainder === 1 ->
        false
      newRemainder === n - 1 ->
        _isProbablePrime(n, accuracy, overallI + 1)
      true ->
        _compositeTest(n, accuracy, overallI, s - 1, newRemainder)
    end
  end

  defp _whatExpondentOf2CreatesAnOddNumber(n, result) when rem(n,2) !== 0, do: result
  defp _whatExpondentOf2CreatesAnOddNumber(n, [exponent, _]) do
    newN = div(n,2)
    newExponent = exponent + 1

    _whatExpondentOf2CreatesAnOddNumber(newN, [newExponent, newN])
  end

  #END FOR PRIMALITY TESTING

  #FOR GENERATE PRIMES
  defp _generatePrimes([], result), do: result
  defp _generatePrimes(potentialPrimes, result) do
    filteredPrimes = _filterNonPrimes(potentialPrimes, List.first(potentialPrimes))
    nextResult = _addPrimeToResult(result, List.first(potentialPrimes))

    _generatePrimes(filteredPrimes, nextResult)
  end

  defp _addPrimeToResult(result, prime), do: List.insert_at(result, -1, prime)

  defp _filterNonPrimes(potentialPrimes, currentPrime), do: Enum.filter(potentialPrimes, fn(elem) -> rem(elem, currentPrime) != 0 end)
  #END FOR GENERATE PRIMES
end
