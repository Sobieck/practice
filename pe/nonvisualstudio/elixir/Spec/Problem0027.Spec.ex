# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\elixir\Spec\Problem0027.Spec.ex

Code.require_file "../Implementation/Problem0027.ex", __DIR__

ExUnit.start

defmodule Problem0027Tests do
  use ExUnit.Case, async: true

  test "generatesAPrime({1, 41}, 39) should return true." do
    assert Problem0027.generatesAPrime({39, {1, 41}}) == true
  end

  test "generatesAPrime({-76, 1601}, 0) should return true." do
    assert Problem0027.generatesAPrime({0, {-76, 1601}})  == true
  end

  test "generatesAPrime({-76, 1601}, 80) should return false." do
    assert Problem0027.generatesAPrime({80, {-76, 1601}})  == false
  end

  test "generatesAPrime({1, 41}, 40) should return true." do
    assert Problem0027.generatesAPrime({40, {1, 41}}) == false
  end

  test "numberOfConsecutivePrimesProducedByQuadraticFormula({-79,1601}) should return {80, {-79,1601}}." do
    assert Problem0027.numberOfConsecutivePrimesProducedByQuadraticFormula({-79,1601}) == {80, {-79, 1601}}
  end

  test "numberOfConsecutivePrimesProducedByQuadraticFormula({1, 41}) should return {40, {1, 41}}." do
    assert Problem0027.numberOfConsecutivePrimesProducedByQuadraticFormula({1, 41}) == {40, {1, 41}}
  end

  test "numberOfConsecutivePrimesProducedByQuadraticFormula({1, 40}) should return {0, {1, 40}}." do
    assert Problem0027.numberOfConsecutivePrimesProducedByQuadraticFormula({1, 40}) == {0, {1, 40}}
  end

  test "numberOfConsecutivePrimesProducedByQuadraticFormula({-3, -3}) should return {4, {-3, -3}}." do
    assert Problem0027.numberOfConsecutivePrimesProducedByQuadraticFormula({-3, -3}) == {4, {-3, -3}}
  end

  test "generateListOfBs 15 should return [-13, -11, -7, -5, -3, -2, 2, 3, 5, 7, 11, 13]." do
    assert Problem0027.generateListOfBs(15) == [-13, -11, -7, -5, -3, -2, 2, 3, 5, 7, 11, 13]
  end

  test "generateListOfBs 4 should return [-3, -2, 2, 3]." do
    assert Problem0027.generateListOfBs(4) == [-3, -2, 2, 3]
  end

  test "maxConPrimesGeneratedGivenB(-2,3) should return {3, {-2,-2}}." do
    assert Problem0027.maxConPrimesGeneratedGivenB(-2,3) == {3, {-2,-2}}
  end

  test "maxConPrimesGeneratedGivenB(-3,4) should return {4,{-3,-3}}." do
    assert Problem0027.maxConPrimesGeneratedGivenB(-3,4) == {4, {-3,-3}}
  end

  test "maxConPrimesGeneratedGivenBProcess sending -3, 4 should return {4,{-3,-3}}." do
    pid = spawn(Problem0027, :maxConPrimesGeneratedGivenBProcess, [])
    send pid, {self, -3, 4}

    receive do
      answer -> assert answer == {4,{-3,-3}}
    end
  end

  test "maxConPrimesGeneratedGivenBProcess sending -2, 3 should return {3, {-2,-2}}." do
    pid = spawn(Problem0027, :maxConPrimesGeneratedGivenBProcess, [])
    send pid, {self, -2, 3}

    receive do
      answer -> assert answer == {3, {-2,-2}}
    end
  end

  test "quadraticFormulaThatProducesTheMostPrimes 6 should return {5, {-1, 5}}." do
    assert Problem0027.quadraticFormulaThatProducesTheMostPrimes(6) == {5, {-1, 5}}
  end

  test "quadraticFormulaThatProducesTheMostPrimes 10 should return {8, {-7, -7}}." do
    assert Problem0027.quadraticFormulaThatProducesTheMostPrimes(10) == {8, {-7,-7}}
  end

  test "productOfQuadraticFormulaThatProducesTheMostPrimes 10 should return 49." do
    assert Problem0027.productOfQuadraticFormulaThatProducesTheMostPrimes(10) == 49
  end

  test "productOfQuadraticFormulaThatProducesTheMostPrimes 6 should return -5." do
    assert Problem0027.productOfQuadraticFormulaThatProducesTheMostPrimes(6) == -5
  end
end
