defmodule Kenya.MixProject do
  use Mix.Project

  @source_url "https://github.com/AtulabsTech/kenya"
  @version "0.1.0"

  def project do
    [
      app: :kenya,
      version: @version,
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      description: description(),
      source_url: @source_url
    ]
  end

  def application do
    [
      extra_applications: [:logger, :yamerl]
    ]
  end

  defp deps do
    [
      {:yamerl, "~> 0.10"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end

  defp docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      formatters: ["html"]
    ]
  end

  defp package do
    [
      description: description(),
      maintainers: ["AtulabsTech"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      files: ~w(lib priv mix.exs README* LICENSE* CHANGELOG*)
    ]
  end

  defp description do
    """
    Kenya is a comprehensive collection of all Kenyan administrative divisions
    including counties, sub-counties, constituencies, wards, and cities/towns
    with their relevant geographical and administrative information.
    """
  end
end
