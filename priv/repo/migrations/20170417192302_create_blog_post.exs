defmodule BlogApp.Repo.Migrations.CreateBlogApp.Blog.Post do
  use Ecto.Migration

  def change do
    create table(:blog_posts) do
      add :title, :string
      add :body, :string
      add :accounts_users_id, references(:accounts_users, on_delete: :nothing)

      timestamps()
    end

  end
end
