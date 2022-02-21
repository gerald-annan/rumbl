defmodule RumblWeb.Controllers.UserController do
  use RumblWeb, :controller

  def index(conn, _params) do
    users = Rumbl.Repo.all(RumblWeb.Models.User)
    render(conn, "index.html", users: users)
  end
end
