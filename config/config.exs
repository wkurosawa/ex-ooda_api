# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ooda_api,
  ecto_repos: [OodaApi.Repo]

# Configures the endpoint
config :ooda_api, OodaApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QCopB48mkHFrJQwsALSdCUGK+O1SRNmgnE9U/qqJ3Wn9nrx539nQ5lwMInfD/9HV",
  render_errors: [view: OodaApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OodaApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
