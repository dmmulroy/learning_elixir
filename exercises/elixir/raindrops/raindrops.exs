defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    number |> pling |> plang |> plong
  end

  defp pling(number) do
    cond do
      rem(number, 3) == 0 -> {number, "Pling"}
      true -> {number, ""}
    end
  end

  defp plang({number, string}) do
    cond do
      rem(number, 5) == 0 -> {number, string <> "Plang"}
      true -> {number, string}
    end
  end

  defp plong({number, string}) do
    cond do
      rem(number, 7) == 0 -> string <> "Plong"
      string == "" -> Integer.to_string(number)
      true -> string
    end
  end
end
