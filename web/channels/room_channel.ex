defmodule Active.RoomChannel do
  use Phoenix.Channel

  def join("web", _message, socket) do
    {:ok, socket}
  end
  def join("ios", _message, socket) do
    {:ok, socket}
  end
  def join("android", _message, socket) do
    {:ok, socket}
  end

end