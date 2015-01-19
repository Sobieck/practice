# IN POWERSHELL
# iex.bat - REPL
# elixir c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\elixir\Spec\Math.Spec.ex

Code.require_file "../Implementation/Math.ex", __DIR__

ExUnit.start

defmodule MathTests do
  use ExUnit.Case, async: true

  test "gcd(990,210) should return 30." do
    assert Math.gcd(990, 210) === 30
  end

  test "gcd(210,990) should return 30." do
    assert Math.gcd(210, 990) === 30
  end

  test "gcd(952,624) should return 8." do
    assert Math.gcd(952, 624) === 8
  end

  test "gcd(624,952) should return 8." do
    assert Math.gcd(624, 952) === 8
  end

  test "lcm(65,50) should return 650." do
    assert Math.lcm(65,50) === 650
  end

  test "lcm(10,4) should return 20." do
    assert Math.lcm(10,4) === 20
  end

  test "pow 100 10 should return 100_000_000_000_000_000_000." do
    assert Math.pow(100,10) === 100_000_000_000_000_000_000
  end

  test "pow 5 5 should return 3_125." do
    assert Math.pow(5,5) === 3_125
  end

  test "powMod 4 13 497 should return 445." do
    assert Math.powMod(4,13,497) === 445
  end

  test "powMod 46_565 240_437_235 961_748_941 should return 533_506_838." do
    assert Math.powMod(46_565, 240_437_235, 961_748_941) === 533_506_838
  end

  test "powMod 46_565 0 961_748_941 should return 1." do
    assert Math.powMod(46_565, 0, 961_748_941) === 1
  end

end
