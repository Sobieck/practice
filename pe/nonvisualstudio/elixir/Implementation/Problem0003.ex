defmodule Problem0003 do

  def primeFactors(numberToFactor) do
    primeFactorsRecur(2, numberToFactor, HashSet.new)
  end

  def largestPrimeFactor(numberToFactor), do: primeFactors(numberToFactor) |> Enum.max

  defp primeFactorsRecur(factorBy, currentNumberToFactor, primeFactors) do
    cond do
      factorBy > currentNumberToFactor ->
        primeFactors
      isDivisibleByCurrentFactor(currentNumberToFactor, factorBy) ->
        primeFactorsRecur(factorBy, div(currentNumberToFactor, factorBy), primeFactors |> Set.put(factorBy))
      true ->
        primeFactorsRecur((factorBy + 1), currentNumberToFactor, primeFactors)
    end
  end

  defp isDivisibleByCurrentFactor(currentNumber, factorBy), do: rem(currentNumber, factorBy) == 0
end
