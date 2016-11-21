defmodule Geolink.PageController do
  use Geolink.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
