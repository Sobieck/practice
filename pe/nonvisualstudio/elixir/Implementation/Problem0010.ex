#elixir -r c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Implementation\Problem0010.ex -e "Problem0010.run(2000000)"

Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Primes.ex", __DIR__

defmodule Problem0010 do

  def sumOfPrimesBelow(maxExclusive) do
    Primes.generatePrimes(maxExclusive - 1)
    |> Enum.sum
  end

  def run(maxExclusive), do: IO.puts inspect :timer.tc(Problem0010, :sumOfPrimesBelow, [maxExclusive])
end
