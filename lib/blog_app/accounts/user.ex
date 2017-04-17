defmodule BlogApp.Accounts.User do
  use Ecto.Schema

  schema "accounts_users" do
    field :email, :string
    field :name, :string

    timestamps()
  end
end
