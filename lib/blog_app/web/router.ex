defmodule BlogApp.Web.Router do
  use BlogApp.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogApp.Web do
    pipe_through :api
  end
end
