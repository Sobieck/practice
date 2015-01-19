Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Primes.ex", __DIR__

defmodule Problem0027 do

  def generatesAPrime({n, {a, b}}) do
    ((n * n) + (n * a) + b)
    |> Primes.isProbablePrime(128)
  end

  def numberOfConsecutivePrimesProducedByQuadraticFormula({a, b}), do: _numberOfConsecutivePrimesProducedByQuadraticFormula({0,{a,b}})

  def generateListOfBs(maxExclusive) do
    positiveBs = [1] ++ Primes.generatePrimes(maxExclusive - 1)
    negativeBs = (Enum.map(positiveBs, &(-1 * &1)) |> Enum.reverse)

    negativeBs ++ positiveBs
  end

  def maxConPrimesGeneratedGivenB(b, maxExclusive) do
    startA = (maxExclusive - 1) * -1

    _maxConPrimesGeneratedGivenB({0, {0, b}}, maxExclusive, startA)
  end

  def maxConPrimesGeneratedGivenBProcess() do
    receive do
      {sender, b, maxExclusive} -> send sender, maxConPrimesGeneratedGivenB(b, maxExclusive)
    end
  end

  def quadraticFormulaThatProducesTheMostPrimes(maxExclusive) do
    generateListOfBs(maxExclusive)
    |> Enum.map(fn (b) -> send spawn(Problem0027, :maxConPrimesGeneratedGivenBProcess, []), {self, b, maxExclusive} end)
    |> Enum.map(fn (_) -> receive do result -> result end end)
    |> Enum.max_by(&(elem(&1, 0)))
  end

  def productOfQuadraticFormulaThatProducesTheMostPrimes(maxExclusive) do
    {_, {a, b}} = quadraticFormulaThatProducesTheMostPrimes(maxExclusive)
    a * b
  end

  defp _numberOfConsecutivePrimesProducedByQuadraticFormula(primesTuple) do
    if generatesAPrime(primesTuple) do
      newNumberOfPrimes = elem(primesTuple, 0) + 1
      _numberOfConsecutivePrimesProducedByQuadraticFormula({newNumberOfPrimes, elem(primesTuple,1)})
    else
      primesTuple
    end
  end

  defp _maxConPrimesGeneratedGivenB(result, maxExclusive, currentA) when currentA === maxExclusive, do: result
  defp _maxConPrimesGeneratedGivenB({totalPrimes, {a, b}}, maxExclusive, currentA) do
    {newNumberOfPrimes, {_, _}} = numberOfConsecutivePrimesProducedByQuadraticFormula({currentA, b})

    if newNumberOfPrimes > totalPrimes do
      _maxConPrimesGeneratedGivenB({newNumberOfPrimes, {currentA, b}}, maxExclusive, currentA + 1)
    else
      _maxConPrimesGeneratedGivenB({totalPrimes, {a, b}}, maxExclusive, currentA + 1)
    end
  end
end
