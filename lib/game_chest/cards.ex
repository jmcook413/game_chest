defmodule GameChest.Cards do

  def standard do
    Enum.map(["spade", "club", "diamond", "heart"],
      fn suit -> List.zip([List.duplicate(suit, 13), Enum.to_list(2..14)]) end
    )
    |> List.flatten()
  end
end
