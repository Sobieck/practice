# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0004.Concurrent.Spec.ex

Code.require_file "../Implementation/Problem0004.Concurrent.ex", __DIR__

ExUnit.start

defmodule Problem0004ConcurrentTests do
  use ExUnit.Case, async: true

  test "maxOfLineNumberProcess sending 1 20 should return 11." do
    pid = spawn(Problem0004Concurrent, :maxOfLineNumberProcess, [])
    send pid, {self, 1, 20}

    receive do
      answer -> assert answer == 11
    end
  end

  test "maxPalendromProductConcurrent(100,999) should return 906609." do
    assert Problem0004Concurrent.maxPalendromProductConcurrent(100,999) == 906609
  end

  test "isPalendromForMap(false) should return 0." do
    assert Problem0004Concurrent.isPalendromForMap(12390, false) == 0
  end

  test "isPalendromForMap(true, 101) should return 101." do
    assert Problem0004Concurrent.isPalendromForMap(101, true) == 101
  end

  test "isPalendromForMap(152) should return 0." do
    assert Problem0004Concurrent.isPalendromForMap(152) == 0
  end

  test "isPalendromForMap(12345654321) should return 12345654321." do
    assert Problem0004Concurrent.isPalendromForMap(12345654321) == 12345654321
  end


  test "isProductPalendromProcess sending 2 8 should return 0." do
    pid = spawn(Problem0004Concurrent, :isProductPalendromProcess, [])
    send pid, {self, 2, 8}

    receive do
      answer -> assert answer == 0
    end
  end

  test "isProductPalendromProcess sending 11 11 should return 121." do
    pid = spawn(Problem0004Concurrent, :isProductPalendromProcess, [])
    send pid, {self, 11, 11}

    receive do
      answer -> assert answer == 121
    end
  end

  test "maxPalendromOfSeqMultipliedByFirstNumberConcurrent(1,20) should return 11." do
    assert Problem0004Concurrent.maxPalendromOfSeqMultipliedByFirstNumberConcurrent(1,20) == 11
  end

  test "maxPalendromOfSeqMultipliedByFirstNumberConcurrent(2,6) should return 8." do
    assert Problem0004Concurrent.maxPalendromOfSeqMultipliedByFirstNumberConcurrent(2,6) == 8
  end

  test "maxOfLineNumberProcessConcurrent sending 1 20 should return 11." do
    pid = spawn(Problem0004Concurrent, :maxOfLineNumberProcessConcurrent, [])
    send pid, {self, 1, 20}

    receive do
      answer -> assert answer == 11
    end
  end

  test "maxPalendromProductConcurrentAll(100,999) should return 906609." do
    assert Problem0004Concurrent.maxPalendromProductConcurrentAll(100,999) == 906609
  end

  test "maxPalendromProductConcurrentAll(10,99) should return 9009." do
    assert Problem0004Concurrent.maxPalendromProductConcurrentAll(10,99) == 9009
  end
end
