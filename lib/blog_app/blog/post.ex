defmodule BlogApp.Blog.Post do
  use Ecto.Schema

  schema "blog_posts" do
    field :body, :string
    field :title, :string
    belongs_to :accounts_users, BlogApp.Accounts.User, foreign_key: :accounts_users_id

    timestamps()
  end
end
