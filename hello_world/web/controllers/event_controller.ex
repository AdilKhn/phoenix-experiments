defmodule HelloWorld.EventController do
  use HelloWorld.Web, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end
end
