defmodule EctoCrux.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_crux,
      name: "EctoCrux",
      version: "1.1.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      description: "Crud concern to use in helper's schema implementation with Repo methods.",
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      licenses: ["GNU GPLv3"],
      links: %{"GitHub" => "https://github.com/delight-data/ecto_crux"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:ecto_sql, "~> 3.1.0", only: :dev}
    ]
  end
end
