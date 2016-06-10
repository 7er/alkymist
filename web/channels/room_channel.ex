defmodule Alkymist.RoomChannel do
  use Alkymist.Web, :channel
  def join("rooms:frontpage", _message, socket) do
    #socket = assign(socket, :flesk, "fjong")
    {:ok, socket}
  end

  def join("rooms:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast! socket, "new_msg", %{body: body}
    {:noreply, socket}
  end
end
