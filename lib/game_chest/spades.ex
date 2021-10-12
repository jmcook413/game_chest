defmodule GameChest.Spades do
  alias GameChest.Cards
  alias GameChest.Dealer

  defstruct [:hands, :teams, :scores, :bids]
end
