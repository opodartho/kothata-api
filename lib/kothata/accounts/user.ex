defmodule Kothata.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Kothata.Accounts.User


  schema "users" do
    field :email, :string
    field :password_hash, :string
    field :username, :string
    field :password, :string, virtual: true

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :email, :password_hash])
    |> validate_required([:username, :email, :password_hash])
  end
end
