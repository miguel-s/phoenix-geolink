# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :geolink,
  ecto_repos: [Geolink.Repo]

# Configures the endpoint
config :geolink, Geolink.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4ejwwI7+uR6VvD3rMUG3Sjq49bSOP2I50dTav5aq3Sb1C4uIKOK4rBThpsGnM06t",
  render_errors: [view: Geolink.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Geolink.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
