defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end
end
