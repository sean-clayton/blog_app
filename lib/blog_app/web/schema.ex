defmodule BlogApp.Schema do
  use Absinthe.Schema
  import_types BlogApp.Schema.Types

  query do
    field :blog_posts, list_of(:blog_post) do
      resolve &BlogApp.Blog.PostResolver.all/2
    end

    field :accounts_users, list_of(:accounts_user) do
      resolve &BlogApp.Accounts.UserResolver.all/2
    end
  end
end