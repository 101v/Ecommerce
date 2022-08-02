defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  # def index(conn, _params) do
  #   conn
  #   |> render(:index)
  # end

  def show(conn, _param) do
    page = %{title: "foo"}

    render(conn, "show.json", page: page)
  end

  def index(conn, _params) do
    pages = [%{title: "foo"}, %{title: "bar"}]

    render(conn, "index.json", pages: pages)
  end
end
