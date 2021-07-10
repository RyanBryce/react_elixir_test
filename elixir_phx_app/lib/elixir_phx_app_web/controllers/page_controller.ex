defmodule ElixirPhxAppWeb.PageController do
  use ElixirPhxAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
