defmodule SpencerWeb.PageController do
  use SpencerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
