# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\helloworld\nonvisualstudio\elixir\Spec\PassTokenBack.Spec.ex

Code.require_file "../Implementation/PassTokenBack.ex", __DIR__

ExUnit.start

defmodule PassTokenBackTests do
  use ExUnit.Case, async: true

  test "removeTsFromString('betty') should return 'bey'." do
    assert PassTokenBack.removeTsFromString("betty") == "bey"
  end

  test "removeTsFromString('thomas') should return 'homas'." do
    assert PassTokenBack.removeTsFromString("thomas") == "homas"
  end

  test "removeTsFromString('Thomas') should return 'homas'." do
    assert PassTokenBack.removeTsFromString("Thomas") == "homas"
  end

  test "removeTsProcess() sending it 'Betty' should return 'Bey'." do

    pid = spawn(PassTokenBack, :removeTsProcess, [])
    send pid, {self, "Betty"}

    receive do
      newString ->
        assert newString == "Bey"
    end
  end

  test "removeTsAndConcat(['Thomas','betty']) should return 'homasbey'." do
    assert PassTokenBack.removeTsAndConcat(["Thomas","Betty"]) == "homasBey"
  end

  test "removeTsAndConcat(['Thomas','betty','phillip']) should return 'homasbeyphillip'." do
    assert PassTokenBack.removeTsAndConcat(["Thomas","Betty","phillip"]) == "homasBeyphillip"
  end

end
