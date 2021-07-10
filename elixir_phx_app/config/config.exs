# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_phx_app,
  ecto_repos: [ElixirPhxApp.Repo]

# Configures the endpoint
config :elixir_phx_app, ElixirPhxAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z59PVjqlpwvSyw4l0ER0dBh9xq39cO25P1XxyH6XsytuUqRvPVR1xMKaqzELVrRt",
  render_errors: [view: ElixirPhxAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirPhxApp.PubSub,
  live_view: [signing_salt: "DIOnrKl9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"