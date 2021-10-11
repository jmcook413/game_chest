defmodule GameChest.Dealer do
  defstruct [:hands, deck: []]

  def shuffle(cards), do: Enum.shuffle(cards)

  def deal(cards, players, hand_size) do
    deal(Enum.take(cards, Enum.count(players) * hand_size), players)
    |> Map.merge(%{deck: Enum.take(cards, (Enum.count(cards) - Enum.count(players) * hand_size) * -1)})
  end

  def deal(cards, players) do
    %__MODULE__{hands: Enum.with_index(cards)
      |> Enum.group_by(
        fn {_element, index} -> Enum.at(players, rem(index, Enum.count(players))) end,
        fn {element, _index} -> element end
      ),
      deck: []}
  end

end
