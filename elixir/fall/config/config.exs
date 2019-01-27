# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :fall, FallWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+MNnYZiwCLHvxRSDCqh2yjiOWWv9VLbjktb81dRfxXOh6tS8x7qrWUk5yMDzOp+p",
  render_errors: [view: FallWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Fall.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
