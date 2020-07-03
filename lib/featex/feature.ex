defmodule Featex.Feature do
    use Ecto.Schema
    import Ecto.Changeset
    alias Featex.Feature


    schema "feature" do
        field :key, :string, size: 20
        field :title, :string, size: 100
        field :description, :string
        field :estimate, :integer

        timestamps()
    end

    def changeset(%Feature{} = feature, attrs) do
        feature
        |> cast(attrs, [:key, :title, :description, :estimate])
        |> validate_required([:key, :title])
    end

end