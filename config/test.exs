use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gallery, GalleryWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :gallery, Gallery.Repo,
  username: System.get_env("DATA_DB_USER"),
  password: System.get_env("DATA_DB_PASS"),
  hostname: System.get_env("DATA_DB_HOST"),
  database: "gallery_test",
  pool: Ecto.Adapters.SQL.Sandbox
