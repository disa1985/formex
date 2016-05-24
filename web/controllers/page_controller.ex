defmodule Formex.PageController do
  use Formex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
