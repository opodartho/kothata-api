defmodule KothataWeb.Router do
  use KothataWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", KothataWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
