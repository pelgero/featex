defmodule FeatexWeb.ListFeaturesLive do
    use FeatexWeb, :live_view
    alias Featex.Repo
    alias Featex.Feature

    def mount(_params, _session, socket) do
      features = Repo.all(Feature)
      {:ok, socket
        |> assign(:features, features)
        |> assign(:total, Enum.count(features))
        |> assign(:desc, "")
      }
    end
  
    def handle_event("show-desc", %{"key" => key}, socket) do
      feature = Enum.find(
          socket.assigns.features, 
          %{description: ""}, 
          fn feature -> feature.key == key end)
      
      {:noreply, assign(socket, desc: feature.description)}
    end
  end
  