use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ooda_api, OodaApiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ooda_api, OodaApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ooda_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
