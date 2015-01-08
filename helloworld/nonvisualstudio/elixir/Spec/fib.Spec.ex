# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\helloworld\nonvisualstudio\elixir\Spec\fib.Spec.ex
# http://learnelixir.com/blog/2014/10/06/basic-testing-with-elixir/

Code.require_file "../Implementation/fib.ex", __DIR__

ExUnit.start

defmodule SequenceTests do
  use ExUnit.Case, async: true

  test "fibonacci 0 should be 1." do
    assert Sequence.fibonacci(0) == 1
  end

  test "fibonacci 1 should be 1." do
    assert Sequence.fibonacci(1) == 1
  end

  test "fibonacci 2 should be 2." do
    assert Sequence.fibonacci(2) == 2
  end

  test "fibonacci 3 should be 3." do
    assert Sequence.fibonacci(3) == 3
  end

  test "fibonacci 4 should be 5." do
    assert Sequence.fibonacci(4) == 5
  end
end
