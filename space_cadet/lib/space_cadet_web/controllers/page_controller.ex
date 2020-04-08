defmodule SpaceCadetWeb.PageController do
  use SpaceCadetWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
