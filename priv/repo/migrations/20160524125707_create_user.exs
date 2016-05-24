defmodule Formex.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :prefix, :string
      add :name, :string

      timestamps
    end
    create unique_index(:users, [:name])

  end
end
