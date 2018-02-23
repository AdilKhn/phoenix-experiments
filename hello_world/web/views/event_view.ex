defmodule HelloWorld.EventView do
  use HelloWorld.Web, :view

  def render("index.json", %{}) do
    %{hello: "world"}
  end
end
