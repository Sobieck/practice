defmodule CollectionSpeed do

  def filter(max) do
    1..max 
    |> Enum.filter(&(rem(&1,2) == 0))
  end

  def map(max) do
    1..max
    |> Enum.map(&(isEven(&1)))
  end

  def isEven(number) when rem(number,2) == 0, do: number
  def isEven(_), do: False

  def run() do
    IO.puts inspect :timer.tc(CollectionSpeed, :filter, [100_000_000])
  end
end
