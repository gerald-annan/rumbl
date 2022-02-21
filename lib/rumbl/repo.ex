defmodule Rumbl.Repo do
  # use Ecto.Repo,
  #   otp_app: :rumbl,
  #   adapter: Ecto.Adapters.Postgres

  @moduledoc """
  In memory repository.
  """
  def all(RumblWeb.Models.User) do
    [
      %RumblWeb.Models.User{id: "1", name: "José", username: "josevalim", password: "elixir"},
      %RumblWeb.Models.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
      %RumblWeb.Models.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}
    ]
  end

  def all(_module), do: []
end
