defmodule ApiExample.Router do
  use ApiExample.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", ApiExample do
    pipe_through :api
    get "/users", UserController, :index
    get "/users/:id", UserController, :show
  end
end
