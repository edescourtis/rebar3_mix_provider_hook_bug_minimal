defmodule Example.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      #apps: [:erlang_app_example, :elixir_app_example],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [{:distillery, "~> 1.5"}]
  end
end
