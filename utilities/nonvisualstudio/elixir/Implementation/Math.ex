# To use:
# Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Math.ex", __DIR__

defmodule Math do
  def generatePrimes(maxInclusive) do
    _generatePrimes(2..maxInclusive |> Enum.take(maxInclusive), [])
  end

  def gcd(left, right) do
    leftRemRight = rem(left, right)
    cond do
      leftRemRight == 0 ->
        right
      true ->
        gcd(right, leftRemRight)
    end
  end

  def lcm(left, right) do
    div((left * right), gcd(left,right))
  end


  defp _generatePrimes([], result), do: result
  defp _generatePrimes(potentialPrimes, result) do
    _generatePrimes(
      filterNonPrimes(potentialPrimes, List.first(potentialPrimes)),
      addPrimeToResult(result, List.first(potentialPrimes)))
  end

  defp addPrimeToResult(result, prime), do: List.insert_at(result, -1, prime)

  defp filterNonPrimes(potentialPrimes, currentPrime), do: Enum.filter(potentialPrimes, fn(elem) -> rem(elem, currentPrime) != 0 end)
end
