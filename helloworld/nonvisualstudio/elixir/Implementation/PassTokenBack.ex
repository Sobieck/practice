#for WorkingWithMultipleProcesses-2 from programming elixir

defmodule PassTokenBack do

  def removeTsFromString(string), do: string |> String.replace("t", "") |> String.replace("T", "")

  def removeTsProcess() do
    receive do
      {sender, string} ->
        send sender, removeTsFromString(string)
    end
  end

  def removeTsAndConcat(strings) do
    strings
    |> Enum.map(fn (string) -> send spawn(PassTokenBack, :removeTsProcess, []), {self, string} end)
    |> Enum.map(fn (result) -> receive do result -> result end end)
    |> Enum.reduce(fn(elem, acc) -> acc <> elem end)
  end
end
