defmodule RumblWeb.UserController do
  use RumblWeb, :controller

  def index(conn, _params) do
    users = Rumbl.Repo.all(RumblWeb.Models.User)
    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = Rumbl.Repo.get(RumblWeb.Models.User, id)
    render(conn, "show.html", user: user)
  end
end
