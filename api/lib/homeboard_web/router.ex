defmodule HomeboardWeb.Router do
  use HomeboardWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HomeboardWeb do
    pipe_through :api
  end
end
