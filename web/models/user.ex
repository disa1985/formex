defmodule Formex.User do
  use Formex.Web, :model

  schema "users" do
    field :prefix, :string
    field :name, :string

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:prefix, :name])
    |> validate_required([:prefix, :name])
    |> unique_constraint(:name)
  end
end
