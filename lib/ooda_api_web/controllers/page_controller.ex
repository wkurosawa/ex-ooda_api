defmodule OodaApiWeb.PageController do
  use OodaApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
