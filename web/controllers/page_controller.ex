defmodule Alkymist.PageController do
  use Alkymist.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
