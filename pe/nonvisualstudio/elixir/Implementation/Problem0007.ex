Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Primes.ex", __DIR__

defmodule Problem0007 do
  def nthPrime(nth) do
    Primes.generatePrimes(nth * 11) |> Enum.at(nth - 1)
  end
end
