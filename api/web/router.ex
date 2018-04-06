defmodule Homeboard.Router do
  use Homeboard.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Homeboard do
    pipe_through :api
  end
end
