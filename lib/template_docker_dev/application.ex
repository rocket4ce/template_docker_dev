defmodule TemplateDockerDev.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TemplateDockerDevWeb.Telemetry,
      TemplateDockerDev.Repo,
      {DNSCluster, query: Application.get_env(:template_docker_dev, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TemplateDockerDev.PubSub},
      # Start a worker by calling: TemplateDockerDev.Worker.start_link(arg)
      # {TemplateDockerDev.Worker, arg},
      # Start to serve requests, typically the last entry
      TemplateDockerDevWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TemplateDockerDev.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TemplateDockerDevWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
