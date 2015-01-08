defmodule Sequence do
  def fibonacci(0), do: 1 #pattern match
  def fibonacci(n) when n == 1, do: 1 #guard
  def fibonacci(n), do: fibonacci(n-1) + fibonacci(n-2)
end
