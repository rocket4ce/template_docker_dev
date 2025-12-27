defmodule TemplateDockerDevWeb.PageController do
  use TemplateDockerDevWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
