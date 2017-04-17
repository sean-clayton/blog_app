defmodule BlogApp.Blog.Post do
  use Ecto.Schema

  schema "blog_posts" do
    field :body, :string
    field :title, :string

    timestamps()
  end
end
