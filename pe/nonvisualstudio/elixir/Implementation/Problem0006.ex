defmodule Problem0006 do
  def sumOfSquaresOfNumberLine(lastNumber) do
    1..lastNumber
    |> Enum.map( &(square(&1)))
    |> Enum.sum
  end

  def squareOfSumsOfNumberLine(lastNumber) do
    1..lastNumber
    |> Enum.sum
    |> square
  end

  def differenceBetweenSquareOfSumsAndSumOfSquares(lastNumber) do
    squareOfSumsOfNumberLine(lastNumber) - sumOfSquaresOfNumberLine(lastNumber)
  end

  defp square(number), do: number * number
end
