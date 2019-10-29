defmodule TextClient.Summary do
  def display(game = %{tally: tally}) do
    IO.puts([
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")} \n",
      "Guesses left: #{tally.turns_left} \n",
      "Lettrs used: #{tally.already_used |> Enum.join(" ")}"
    ])

    game
  end
end
