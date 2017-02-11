defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    Regex.scan(~r/\p{Lu}|[\p{S}\p{Z}]\p{L}/u, string)
    |> Enum.map(&(&1 |> extract_element |> String.trim |> String.upcase))
    |> Enum.join
  end

  defp extract_element([head | _tail]), do: head
end
