defmodule Problem0004 do

  def isPalendrom(number) when is_integer(number), do: Integer.to_char_list(number) |> isPalendrom
  def isPalendrom(list), do: list == Enum.reverse(list)

  def maxPalendromOfNumberLineMultipliedByFirstNumber(startNumber, finalNumber) do
    startNumber..finalNumber
    |> Enum.map(& (&1 * startNumber))
    |> Enum.filter(fn (elem) -> isPalendrom(elem) end)
    |> List.insert_at(-1,0) #for when there are no palendrom products.
    |> Enum.max
  end

  def maxPalendromProduct(startNumber, endNumber) do
    startNumber..endNumber
    |> Enum.map(fn (elem) -> maxPalendromOfNumberLineMultipliedByFirstNumber(elem, endNumber) end)
    |> Enum.max
  end

  def run(startNumber,endNumber) do
    IO.puts inspect :timer.tc(Problem0004, :maxPalendromProduct, [startNumber,endNumber])
  end
end
