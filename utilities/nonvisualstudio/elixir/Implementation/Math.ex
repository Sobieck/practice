# To use:
# Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Math.ex", __DIR__

defmodule Math do
  use Bitwise

  def gcd(left, right) do
    leftRemRight = rem(left, right)
    cond do
      leftRemRight == 0 ->
        right
      true ->
        gcd(right, leftRemRight)
    end
  end

  def lcm(left, right) do
    div((left * right), gcd(left,right))
  end

  def pow(n, exponent) do
    Stream.cycle([n])
    |> Enum.take(exponent)
    |> Enum.reduce(fn(elem, acc) -> elem * acc end)
  end

  #http://en.wikipedia.org/wiki/Modular_exponentiation
  def powMod(base, exponent, modulus) do
    _powMod(rem(base, modulus), exponent, modulus, 1)
  end

  defp _powMod(_, 0, _, result), do: result
  defp _powMod(base, exponent, modulus, result) do
    nextResult = _nextResult(base, exponent, modulus, result)
    nextExponent = exponent >>> 1
    nextBase = rem(base * base, modulus)

    _powMod(nextBase, nextExponent, modulus, nextResult)
  end

  defp _nextResult(base, exponent, modulus, currentResult) when rem(exponent, 2) === 1 do
    rem(currentResult * base, modulus)
  end
  defp _nextResult(_, _, _, currentResult), do: currentResult
end
