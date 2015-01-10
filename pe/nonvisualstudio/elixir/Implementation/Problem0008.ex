defmodule Problem0008 do
  def importProblemSet(path) do
    File.read!(path)
    |> String.replace("\n", "")
    |> String.replace("\r", "")
  end

  def multiplyDigitsOfString(string) do
    String.codepoints(string)
    |> Enum.map(fn(elem) -> Integer.parse(elem) end)
    |> Enum.map(fn(item) -> elem(item,0) end)
    |> Enum.reduce(fn(elem, acc) -> elem * acc end)
  end

  def multiplyPortionOfString(howLong, string), do: String.slice(string, 0, howLong) |>  multiplyDigitsOfString

  def maxOfMultiplesOfString("", _, result), do: result
  def maxOfMultiplesOfString(string, howLong, result) do
    cond do
      result > multiplyPortionOfString(howLong, string) ->
        maxOfMultiplesOfString(restOfString(string), howLong, result)
      true ->
        maxOfMultiplesOfString(restOfString(string), howLong, multiplyPortionOfString(howLong, string))
    end
  end

  def maxOfMultiplesOfTxtFile(howLong, path) do
    importProblemSet(path)
    |> maxOfMultiplesOfString(howLong, 0)
  end

  defp restOfString(string), do: String.slice(string, 1..(String.length(string) - 1))
end
