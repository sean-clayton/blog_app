defmodule BlogApp.Blog.PostResolver do
  alias BlogApp.{Blog.Post, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end
end