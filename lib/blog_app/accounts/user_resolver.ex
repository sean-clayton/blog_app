defmodule BlogApp.Accounts.UserResolver do
  alias BlogApp.{Accounts.User, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(User)}
  end
end