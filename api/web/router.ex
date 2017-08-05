defmodule Slumpr.Router do
  use Slumpr.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Slumpr do
    pipe_through :api
  end
end
