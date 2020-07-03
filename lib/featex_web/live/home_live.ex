defmodule FeatexWeb.HomeLive do
  use FeatexWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, redirect(socket, to: Routes.live_path(socket, FeatexWeb.ListFeaturesLive))}
  end

end
