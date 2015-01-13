# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0004.Spec.ex

Code.require_file "../Implementation/Problem0004.ex", __DIR__

ExUnit.start

defmodule Problem0004Tests do
  use ExUnit.Case, async: true

  test "isPalendrom [] should return true." do
    assert Problem0004.isPalendrom([])
  end

  test "isPalendrom [1, 2, 1] should return true." do
    assert Problem0004.isPalendrom([1,2,1])
  end

  test "isPalendrom [1, 2, 1, 3] should return false." do
    assert Problem0004.isPalendrom([1,2,1,3]) == false
  end

  test "isPalendrom 12354 should return false." do
    assert Problem0004.isPalendrom(12345) == false
  end

  test "isPalendrom 1234554321 should return true." do
    assert Problem0004.isPalendrom(1234554321)
  end

  test "isPalendrom 123454321 should return true." do
    assert Problem0004.isPalendrom(123454321)
  end

  test "maxPalendromOfNumberLineMultipliedByFirstNumber(1,6) should return 6." do
    assert Problem0004.maxPalendromOfNumberLineMultipliedByFirstNumber(1,6) == 6
  end

  test "maxPalendromOfNumberLineMultipliedByFirstNumber(2,6) should return 8." do
    assert Problem0004.maxPalendromOfNumberLineMultipliedByFirstNumber(2,6) == 8
  end

  test "maxPalendromOfNumberLineMultipliedByFirstNumber(1,20) should return 11." do
    assert Problem0004.maxPalendromOfNumberLineMultipliedByFirstNumber(1,20) == 11
  end

  test "maxPalendromOfNumberLineMultipliedByFirstNumber(12,13) should return 0." do
    assert Problem0004.maxPalendromOfNumberLineMultipliedByFirstNumber(12,13) == 0
  end

  test "maxPalendromProduct(1,9) should return 9." do
    assert Problem0004.maxPalendromProduct(1,9) == 9
  end

  test "maxPalendromProduct(1,11) should return 121." do
    assert Problem0004.maxPalendromProduct(1,11) == 121
  end

  test "maxPalendromProduct(10,99) should return 9009." do
    assert Problem0004.maxPalendromProduct(10,99) == 9009
  end

  test "maxPalendromProduct(100,999) should return 906609." do
    assert Problem0004.maxPalendromProduct(100,999) == 906609
  end
end
