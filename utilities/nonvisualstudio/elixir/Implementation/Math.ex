defmodule Math do
  def generatePrimes(maxInclusive) do
    generatePrimesPrivate(2..maxInclusive |> Enum.take(maxInclusive), [])
  end

  defp generatePrimesPrivate([], result), do: result
  
  defp generatePrimesPrivate(potentialPrimes, result) do
    generatePrimesPrivate(
      filterNonPrimes(potentialPrimes, List.first(potentialPrimes)),
      addPrimeToResult(result, List.first(potentialPrimes)))
  end

  defp addPrimeToResult(result, prime), do: List.insert_at(result, -1, prime)

  defp filterNonPrimes(potentialPrimes, currentPrime), do: Enum.filter(potentialPrimes, fn(elem) -> rem(elem, currentPrime) != 0 end)
end
