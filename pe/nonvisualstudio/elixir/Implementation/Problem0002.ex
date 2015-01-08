defmodule Problem0002 do
  #http://stackoverflow.com/a/21083899/2740086
  defp lazyFib(), do: Stream.unfold({1,2}, fn {a,b} -> {a,{b, a + b}} end)

  def fibsLessThan(number) do
    lazyFib() |> Enum.take_while(fn (elem) -> elem < number end)
  end

  def filterEvens(list), do: list |> Enum.filter(fn (elem) -> rem(elem, 2) == 0 end)

  def sumOfEvenFibsLessThan(number) do
    fibsLessThan(number)
    |> filterEvens
    |> Enum.sum
  end
end
