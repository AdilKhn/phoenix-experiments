defmodule HelloWorld.EventController do
  use HelloWorld.Web, :controller
  require Logger

  def index(conn, _params) do
    Logger.info "Params: "
    #IO.inspect(_params)
    #render conn, "index.json"
    json conn, DataHandler.get_event.meta
  end

  def show(conn, _params) do
    Logger.info "Params: "
    #IO.inspect(_params)
    render conn, "index.json"
  end

  def create(conn, params) do
    Logger.info ("Params: " )
    #IO.inspect(_params)
    #render conn, "index.json"
    json conn, params
  end
end
