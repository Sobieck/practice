Code.require_file "../Implementation/Problem0004.ex", __DIR__

defmodule Problem0004Concurrent do

  #Top Process Only Concurrent - this is much better than syncronous as per the speed tests

  def maxOfLineNumberProcess() do
    receive do
      {sender, startNumber, endNumber} ->
        send sender, Problem0004.maxPalendromOfNumberLineMultipliedByFirstNumber(startNumber, endNumber)
    end
  end

  def maxPalendromProductConcurrent(startNumber,endNumber) do
    startNumber..endNumber
    |> Enum.map(fn (elem) -> send spawn(Problem0004Concurrent, :maxOfLineNumberProcess, []), {self, elem, endNumber} end)
    |> Enum.map(fn (_) -> receive do result -> result end end)
    |> Enum.max
  end

  #Multiplying and Filtering Concurrent + Top Level - To many processes.

  def maxPalendromProductConcurrentAll(startNumber,endNumber) do
    startNumber..endNumber
    |> Enum.map(fn (elem) -> send spawn(Problem0004Concurrent, :maxOfLineNumberProcessConcurrent, []), {self, elem, endNumber} end)
    |> Enum.map(fn (_) -> receive do result -> result end end)
    |> Enum.max
  end

  def maxOfLineNumberProcessConcurrent() do
    receive do
      {sender, startNumber, endNumber} ->
        send sender, maxPalendromOfSeqMultipliedByFirstNumberConcurrent(startNumber, endNumber)
    end
  end

  def maxPalendromOfSeqMultipliedByFirstNumberConcurrent(startNumber, endNumber) do
    startNumber..endNumber
    |> Enum.map(fn (elem) -> send spawn(Problem0004Concurrent, :isProductPalendromProcess, []), {self, elem, startNumber} end)
    |> Enum.map(fn (_) -> receive do result -> result end end)
    |> Enum.max
  end

  def isProductPalendromProcess() do
    receive do
      {sender, x, y} -> send sender, isPalendromForMap((x * y))
    end
  end

  def isPalendromForMap(_, false), do: 0
  def isPalendromForMap(return, true), do: return
  def isPalendromForMap(numberToTest) do
    isPalendrom = Problem0004.isPalendrom(numberToTest)
    isPalendromForMap(numberToTest, isPalendrom)
  end


  def run(startNumber,endNumber) do
    IO.puts inspect :timer.tc(Problem0004Concurrent, :maxPalendromProductConcurrent, [startNumber,endNumber])
  end
end
