# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\helloworld\nonvisualstudio\elixir\Spec\CollectionSpeed.Spec.ex

Code.require_file "../Implementation/CollectionSpeed.ex", __DIR__

ExUnit.start

defmodule CollectionSpeedTests do
  use ExUnit.Case, async: true

  test "filter(10) should return [2,4,6,8,10]." do
    assert CollectionSpeed.filter(10) == [2,4,6,8,10]
  end

  test "map(10) should return [False,2,False,4,False,6,False,8,False,10]." do
    assert CollectionSpeed.map(10) == [False,2,False,4,False,6,False,8,False,10]
  end

end
