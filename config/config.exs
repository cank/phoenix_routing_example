# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :spencer, SpencerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jtVD1/WVR46jnkSR0wDf+/4Xz267s6VnY5zetDHr4IY1duxPvwP1eg/xg+pn5NGT",
  render_errors: [view: SpencerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Spencer.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
