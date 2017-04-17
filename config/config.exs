# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_app,
  ecto_repos: [BlogApp.Repo]

# Configures the endpoint
config :blog_app, BlogApp.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QPwBGut7U8dzhA6DColYmI6XRV2rDWkqVM4VQMi7GYyZBYGH2ZxjmiX5aYHfanZ1",
  render_errors: [view: BlogApp.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: BlogApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
