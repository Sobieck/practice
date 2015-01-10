# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0008.Spec.ex

Code.require_file "../Implementation/Problem0008.ex", __DIR__

ExUnit.start

defmodule Problem0008Tests do
  use ExUnit.Case, async: true

  test "importProblemSet problem0008Test1.txt should return '12345678901234567890'." do
    assert Problem0008.importProblemSet("C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Test1.txt") == "12345678901234567890"
  end

  test "importProblemSet problem0008Test2.txt should return '1234567890'." do
    assert Problem0008.importProblemSet("C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Test2.txt") == "1234567890"
  end

  test "importProblemSet problem0008Test3.txt should return longNumber." do
    assert Problem0008.importProblemSet("C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Test3.txt") == "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843"
  end

  test "multiplyDigitsOfString '1111' should return 1." do
    assert Problem0008.multiplyDigitsOfString("1111") == 1
  end

  test "multiplyDigitsOfString '99' should return 81." do
    assert Problem0008.multiplyDigitsOfString("99") == 81
  end

  test "multiplyDigitsOfString '9999999999999' should return 81." do
    assert Problem0008.multiplyDigitsOfString("9999999999999") == 2_541_865_828_329
  end

  test "multiplyDigitsOfString '123456789' should return 362_880." do
    assert Problem0008.multiplyDigitsOfString("123456789") == 362_880
  end

  test "multiplyDigitsOfString '1234567890' should return 0." do
    assert Problem0008.multiplyDigitsOfString("1234567890") == 0
  end

  test "multiplyPortionOfString 1 '912349' should return 9." do
    assert Problem0008.multiplyPortionOfString(1 ,"912349") == 9
  end

  test "multiplyPortionOfString 3 '9123499' should return 9." do
    assert Problem0008.multiplyPortionOfString(3 ,"9123499") == 18
  end

  test "maxOfMultiplesOfString '' 123 should return 0." do
    assert Problem0008.maxOfMultiplesOfString("", 123, 0) == 0
  end

  test "maxOfMultiplesOfString '912349' 1 should return 9." do
    assert Problem0008.maxOfMultiplesOfString("912349", 1, 0) == 9
  end

  test "maxOfMultiplesOfString '912399' 2 should return 81." do
    assert Problem0008.maxOfMultiplesOfString("912399", 2, 0) == 81
  end

  test "maxOfMultiplesOfTxtFile 3 'problem0008Test1.txt' should return 504." do
    assert Problem0008.maxOfMultiplesOfTxtFile(3, "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Test1.txt") == 504
  end

  test "maxOfMultiplesOfTxtFile 2 'problem0008Test2.txt' should return 72." do
    assert Problem0008.maxOfMultiplesOfTxtFile(2, "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Test2.txt") == 72
  end

  test "maxOfMultiplesOfTxtFile 13 'problem0008.txt' should return answer." do
    assert Problem0008.maxOfMultiplesOfTxtFile(13, "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008.txt") == 23_514_624_000
  end
end
