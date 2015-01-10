defmodule Problem0009 do

  #http://en.wikipedia.org/wiki/Pythagorean_triple
  def euclidsFormula(m,n) do
    {
      (m*m - n*n),
      (m*n*2),
      (m*m + n*n)
    }
  end

  def sumOfTriple({a,b,c}), do: a + b + c

  def productOfTriple({a,b,c}), do: a * b * c

  def findFirstTripleThatSumsTo(targetSum) do
    recurseFindTripleThatSumsTo(targetSum, 2, 1)
  end

  def productOfFirstTripletThatSumsTo(targetSum), do: findFirstTripleThatSumsTo(targetSum) |> productOfTriple

  defp recurseFindTripleThatSumsTo(targetSum, m, n) do
    cond do
      euclidsFormula(m,n) |> sumOfTriple == targetSum ->
        euclidsFormula(m,n)
      m == n ->
        recurseFindTripleThatSumsTo(targetSum, m + 1, 1)
      true ->
        recurseFindTripleThatSumsTo(targetSum, m, n + 1)
    end
  end
end
