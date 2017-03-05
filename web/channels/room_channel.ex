defmodule Active.RoomChannel do
  use Phoenix.Channel
  require Logger

  def join("web", message, socket) do
    Logger.info "Connected #{socket.assigns.app_id} with #{socket.assigns.user_id} opened web page"
    Logger.info socket
    {:ok, socket}
  end

  def join("ios", _message, socket) do
    Logger.info "User opened ios app"
    {:ok, socket}
  end

  def join("android", _message, socket) do
    Logger.info "User opened android app"
    {:ok, socket}
  end

  def join("windows", _message, socket) do
    Logger.info "User opened windows app"
    {:ok, socket}
  end

  def terminate(_msg, socket) do
    Logger.info  "Terminated #{socket.assigns.app_id} #{socket.assigns.user_id} socket connection"
    {:ok, socket}
  end

end