defmodule ElixirPhxAppWeb.PageControllerTest do
  use ElixirPhxAppWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
