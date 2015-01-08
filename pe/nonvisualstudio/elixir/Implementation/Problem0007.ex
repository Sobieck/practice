Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Math.ex", __DIR__

defmodule Problem0007 do
  def nthPrime(nth) do
    Math.generatePrimes(nth * 11) |> Enum.at(nth - 1)
  end
end
