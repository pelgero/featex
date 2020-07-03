defmodule Featex.Repo.Migrations.AddFeaturesTable do
  use Ecto.Migration

  def change do
    create table("feature") do
      add :key, :string, size: 20
      add :title, :string, size: 100
      add :description, :string
      add :estimate, :integer

      timestamps()
    end
  end
end
