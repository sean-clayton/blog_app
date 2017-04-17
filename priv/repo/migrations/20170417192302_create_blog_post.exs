defmodule BlogApp.Repo.Migrations.CreateBlogApp.Blog.Post do
  use Ecto.Migration

  def change do
    create table(:blog_posts) do
      add :title, :string
      add :body, :string

      timestamps()
    end

  end
end
