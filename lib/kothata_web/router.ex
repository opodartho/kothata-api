defmodule KothataWeb.Router do
  use KothataWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", KothataWeb do
    pipe_through :api
  end
end
