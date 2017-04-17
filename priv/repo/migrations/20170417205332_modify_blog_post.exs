defmodule BlogApp.Repo.Migrations.CreateBlogApp.Blog.Post do
  use Ecto.Migration

  def change do
    alter table(:blog_posts) do
      modify :body, :text
    end

    create index(:blog_posts, [:accounts_users_id])
  end
end
