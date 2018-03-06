# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hello_world, HelloWorld.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xj2Xn974QgGJqmc82DgNoylovYqnjRzeIs0EHJ/kBnuanEWWeUzBzKvjFLH/owFv",
  render_errors: [view: HelloWorld.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloWorld.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.

config :geca, Geca.Repo,
   adapter: Ecto.Adapters.Postgres,
   database: "geca_repo", # this is name of database in postgresql
   username: "geca",
   password: "sekret",
   hostname: "localhost"

config :geca, :rm, Geca.Repo

import_config "#{Mix.env}.exs"
