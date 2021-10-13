defmodule GameChest.Spades do
  alias GameChest.Cards
  alias GameChest.Dealer

  defstruct [:game_id, :hands, :teams, :scores, :bids]

  def start(players) do
    %{deck: _deck, hands: hands} = deal(players)
    teams = [team1, team2] = Enum.chunk_every(players, 2) |> Enum.zip()

    %__MODULE__{
      hands: hands,
      teams: teams,
      scores: [{team1, 0}, {team2, 0}]
    }
  end

  defp deal(players) do
    Cards.standard()
    |> Dealer.shuffle()
    |> Dealer.deal(players)
  end
end
