defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.replace(~r/[^\p{L}\p{N}\p{Z}-]/u, " ")
    |> String.downcase
    |> String.split
    |> Enum.reduce(%{}, &(Map.update(&2, &1, 1, fn(count) -> count + 1 end)))
  end
end
