Code.require_file "../../../../Utilities/nonvisualstudio/elixir/Implementation/Math.ex", __DIR__

defmodule Problem0005 do

  def lcmOfList(upToWhatNumber), do: 2..upToWhatNumber |> Enum.reduce(1, (fn(elem, acc) -> Math.lcm(elem,acc) end))
end
