Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Math.ex", __DIR__

defmodule Problem0029 do

  def exponentiateNumberFromTwoToX(number, toX) do
    2..toX
    |> Enum.map(&(Math.pow(number, &1)))
    |> Enum.into HashSet.new
  end

  def distinctPowersBetween2And(toX) do
    2..toX
    |> Enum.map(fn (elem) -> exponentiateNumberFromTwoToX(elem, toX) end)
    |> Enum.reduce(fn (elem, acc) -> Set.union(elem, acc) end)
    |> Enum.count
  end

end
