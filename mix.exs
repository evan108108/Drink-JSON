defmodule DrinkJson.Mixfile do
  use Mix.Project

  def project do
    [ app: :drink_json,
      version: "0.0.1",
      elixir: "~> 0.12.2",
      deps: deps,
      source_url: "https://github.com/evan108108/Drink-JSON" ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  defp deps do
    []
  end
end
