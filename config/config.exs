use Mix.Config

config :elixium_miner,
  address: nil


if File.exists?("#{Mix.env}.exs") do
  import_config "#{Mix.env}.exs"
end
