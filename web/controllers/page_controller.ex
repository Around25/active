defmodule Active.PageController do
  use Active.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
