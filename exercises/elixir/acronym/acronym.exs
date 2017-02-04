defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    Regex.scan(~r/\p{Lu}|[\p{S}\p{Z}]\p{L}/u, string)
    |> Enum.flat_map(&(&1))
    |> Enum.map(&(&1 |> String.trim |> String.upcase))
    |> Enum.reduce("", &(&2 <> &1))
  end
end
