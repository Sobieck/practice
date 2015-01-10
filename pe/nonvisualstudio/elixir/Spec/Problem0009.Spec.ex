# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0009.Spec.ex

Code.require_file "../Implementation/Problem0009.ex", __DIR__

ExUnit.start

defmodule Problem0009Tests do
  use ExUnit.Case, async: true

  test "euclidsFormula 2 1 should return {3,4,5}" do
    assert Problem0009.euclidsFormula(2,1) == {3,4,5}
  end

  test "euclidsFormula 10 3 should return {91,60,109}" do
    assert Problem0009.euclidsFormula(10,3) == {91,60,109}
  end

  test "sumOfTriple {1,10,100} should return 111" do
    assert Problem0009.sumOfTriple({1,10,100}) == 111
  end

  test "productOfTriple {105,88,137} should return 1_265_880" do
    assert Problem0009.productOfTriple({105,88,137}) == 1_265_880
  end

  test "productOfTriple {3,4,5} should return 60" do
    assert Problem0009.productOfTriple({3,4,5}) == 60
  end

  test "sumOfTriple {1,12,1000} should return 1013" do
    assert Problem0009.sumOfTriple({1,12,1000}) == 1013
  end

  test "findFirstTripleThatSumsTo 12 should return {3,4,5}" do
    assert Problem0009.findFirstTripleThatSumsTo(12) == {3,4,5}
  end

  test "findFirstTripleThatSumsTo 330 should return {105,88,137}" do
    assert Problem0009.findFirstTripleThatSumsTo(330) == {105,88,137}
  end

  test "productOfFirstTripletThatSumsTo 330 should return 1_265_880" do
    assert Problem0009.productOfFirstTripletThatSumsTo(330) == 1_265_880
  end

  test "productOfFirstTripletThatSumsTo 12 should return 60" do
    assert Problem0009.productOfFirstTripletThatSumsTo(12) == 60
  end

  test "productOfFirstTripletThatSumsTo 1000 should return 31_875_000" do
    assert Problem0009.productOfFirstTripletThatSumsTo(1000) == 31_875_000
  end

end
