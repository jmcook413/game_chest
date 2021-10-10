defmodule GameChest.Repo do
  use Ecto.Repo,
    otp_app: :game_chest,
    adapter: Ecto.Adapters.Postgres
end
