defmodule Problem0001 do

  def isMultipleOf3Or5(number) when rem(number, 3) == 0, do: true
  def isMultipleOf3Or5(number) when rem(number, 5) == 0, do: true
  def isMultipleOf3Or5(number), do: false

  def listOfMultiplesOf5And3FromOneTo(maxExclusive) do
    for n <- 1..(maxExclusive - 1), isMultipleOf3Or5(n), do: n #Haskellish list comprehension!
  end

  def sumOfMultiplesOf5And3From1To(maxExclusive) do
    listOfMultiplesOf5And3FromOneTo(maxExclusive)
    |> Enum.sum
  end
end
