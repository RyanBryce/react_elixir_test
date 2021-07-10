defmodule ElixirPhxApp.Repo do
  use Ecto.Repo,
    otp_app: :elixir_phx_app,
    adapter: Ecto.Adapters.Postgres
end
