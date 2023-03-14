import Config

config :app_colegio, timezone: "America/Bogota"

config :app_colegio,
       http_port: 8083,
       enable_server: true,
       secret_name: "",
       region: "",
       version: "0.0.1",
       in_test: false,
       custom_metrics_prefix_name: "app_colegio_local"

config :logger,
       level: :debug
