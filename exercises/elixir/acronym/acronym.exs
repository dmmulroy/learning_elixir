defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> String.upcase
    |> String.split
    |> Enum.reduce("", &(&2 <> String.first(&1)))
  end
end
