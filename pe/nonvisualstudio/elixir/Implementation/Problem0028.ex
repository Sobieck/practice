defmodule Problem0028 do

  def sumOfBoxLevel(n), do: _sumOfBoxLevel(0, 0, n)

  def sumOfSpiralDiagonals(sizeOfSpiral), do: _sumOfSpiralDiagonals(sizeOfSpiral, 1)

  defp _sumOfSpiralDiagonals(1, sumSoFar), do: sumSoFar
  defp _sumOfSpiralDiagonals(currentLevel, sumSoFar) do
    nextCurrentLevel = currentLevel - 2
    nextSumSoFar = sumSoFar + sumOfBoxLevel(currentLevel)

    _sumOfSpiralDiagonals(nextCurrentLevel, nextSumSoFar)
  end

  defp _sumOfBoxLevel(result, 4, _), do: result
  defp _sumOfBoxLevel(result, i, n) do
    nextI = i + 1
    nextResult = (n * n) - ((n - 1) * i) + result

    _sumOfBoxLevel(nextResult, nextI, n)
  end
end
