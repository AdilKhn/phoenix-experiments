defmodule HelloWorld.HelloController do
  use HelloWorld.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  #note, show.html is the name of the file in templates/hello/show.html.eex
  def show(conn, %{"name" => messenger}) do
    render conn, "show.html", name: messenger 
  end
end
