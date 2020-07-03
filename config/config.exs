# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :featex,
  ecto_repos: [Featex.Repo]

# Configures the endpoint
config :featex, FeatexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ps4jxCWe4ERESY2DYn2PWB5tOCCmwtuq8pzvP/9F5PCz8o6tdv9abn1tHP8Py3qW",
  render_errors: [view: FeatexWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Featex.PubSub,
  live_view: [signing_salt: "a9o6RJOn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
