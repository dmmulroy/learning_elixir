defmodule Bob do
  def hey(input) do
    cond do
        String.ends_with?(input, "?") -> "Sure."
        String.replace(input, " ", "") == "" -> "Fine. Be that way!"
        String.match?(input, ~r/\p{Lu}/u) && String.upcase(input) == input -> "Whoa, chill out!"
        String.ends_with?(input, "!") || true -> "Whatever."
    end
  end
end
