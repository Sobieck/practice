# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0001.Spec.ex

Code.require_file "../Implementation/Problem0001.ex", __DIR__

ExUnit.start

defmodule Problem0001Tests do
  use ExUnit.Case, async: true

  test "isMultipleOf3Or5 100 should return true." do
    assert Problem0001.isMultipleOf3Or5(100)
  end

  test "isMultipleOf3Or5 9 should return true." do
    assert Problem0001.isMultipleOf3Or5(9)
  end

  test "isMultipleOf3Or5 101 should return false." do
    assert Problem0001.isMultipleOf3Or5(101) == false
  end

  test "isMultipleOf3Or5 8 should return false." do
    assert Problem0001.isMultipleOf3Or5(8) == false
  end

  test "listOfMultiplesOf5And3FromOneTo 10 should return [3,5,6,9]." do
    assert Problem0001.listOfMultiplesOf5And3FromOneTo(10) == [3,5,6,9]
  end

  test "listOfMultiplesOf5And3FromOneTo 8 should return [3,5,6]." do
    assert Problem0001.listOfMultiplesOf5And3FromOneTo(8) == [3,5,6]
  end

  test "sumOfMultiplesOf5And3From1To 8 should return 14." do
    assert Problem0001.sumOfMultiplesOf5And3From1To(8) == 14
  end

  test "sumOfMultiplesOf5And3From1To 10 should return 23." do
    assert Problem0001.sumOfMultiplesOf5And3From1To(10) == 23
  end

  test "Answer." do
    assert Problem0001.sumOfMultiplesOf5And3From1To(1000) == 233168
  end
end
