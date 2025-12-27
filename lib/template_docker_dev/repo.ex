defmodule TemplateDockerDev.Repo do
  use Ecto.Repo,
    otp_app: :template_docker_dev,
    adapter: Ecto.Adapters.Postgres
end
