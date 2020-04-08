# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :space_cadet,
  ecto_repos: [SpaceCadet.Repo]

# Configures the endpoint
config :space_cadet, SpaceCadetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+n1RVzG6XV9pDgTR/zfA6iL/QD0Cr/8skxxTE+xwrVRCdMo2ZX+KSoL2a/vW9wfH",
  render_errors: [view: SpaceCadetWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SpaceCadet.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "jiMTZUn9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
