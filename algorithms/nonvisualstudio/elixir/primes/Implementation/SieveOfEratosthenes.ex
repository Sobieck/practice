defmodule SieveOfEratosthenes do
  def eratosthenes(limit) do
    _eratosthenese(limit, :math.sqrt(limit), 2, HashSet.new)
  end

  defp _eratosthenese(limit, sqrtLimit, n, notPrimeSet) when n > sqrtLimit do
    addNumbersNotInHashSetToList(notPrimeSet, limit)
  end

  defp _eratosthenese(limit, sqrtLimit, n, notPrimeSet) do
    nPlus1 = n + 1

    if isInNotPrimes(n, notPrimeSet) do
      _eratosthenese(limit, sqrtLimit, nPlus1, notPrimeSet)
    else
      newNotPrimeHash = sieveMultipleOf(n, limit, notPrimeSet)
      _eratosthenese(limit, sqrtLimit, nPlus1, newNotPrimeHash)
    end
  end

  defp sieveMultipleOf(n, limit, notPrimeSet) do
    _sieveMultipleOf(n, limit, notPrimeSet, n + n)
  end

  defp _sieveMultipleOf(_, limit, notPrimeSet, notPrime) when notPrime > limit, do: notPrimeSet
  defp _sieveMultipleOf(n, limit, notPrimeSet, notPrime) do
    _sieveMultipleOf(n, limit, notPrimeSet |> Set.put(notPrime), notPrime + n)
  end

  defp isInNotPrimes(n, notPrimeSet), do: Enum.member?(notPrimeSet, n)

  defp addNumbersNotInHashSetToList(notPrimeSet, limit) do
    for n <- 2..limit, not isInNotPrimes(n, notPrimeSet), do: n
  end

  def run(limit) do
    IO.puts inspect :timer.tc(SieveOfEratosthenes, :eratosthenes, [limit])
  end
end
