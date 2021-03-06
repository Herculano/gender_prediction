defmodule GenderPrediction.MixProject do
  use Mix.Project

  def project do
    [
      app: :gender_prediction,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Predicts brazilian gender from name based in stats from IBGE",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GenderPrediction.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      {:httpoison, "~> 1.4"},
      {:jason, "~> 1.1"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: "gender_prediction",
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/Herculano/gender_prediction"}
    ]
  end
end
