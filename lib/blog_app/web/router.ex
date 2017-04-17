defmodule BlogApp.Web.Router do
  use BlogApp.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogApp.Web do
    pipe_through :api

    # Users
    resources "/users", UserController, except: [:new, :edit]

    # Posts
    resources "/posts", PostController, except: [:new, :edit]
  end

  forward "/graph", Absinthe.Plug,
    schema: BlogApp.Schema
  
  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: BlogApp.Schema
end
