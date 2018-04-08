# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :homeboard,
  ecto_repos: [Homeboard.Repo]

# Configures the endpoint
config :homeboard, HomeboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2ubdr9+lE8wkZvAEiCd8xIJmnMZgzxFCjQCFM0CPCS84I5KztMkMVnUuLNgYdYRO",
  render_errors: [view: HomeboardWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Homeboard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
