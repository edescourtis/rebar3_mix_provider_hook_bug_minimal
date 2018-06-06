defmodule ElixirAppExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_app_example,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirAppExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true},
      # {:erlang_app_example, in_umbrella: true, compile: "rebar3 compile; mkdir -p ../../_build/#{Mix.env()}/lib/erlang_app_example/; cp -r _build/default/lib/erlang_app_example/* ../../_build/#{Mix.env()}/lib/erlang_app_example/", manager: "rebar3", app: false}
      {:erlang_app_example, in_umbrella: true}
    ]
  end
end

