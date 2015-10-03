defmodule InstagramPhoenixExample.PageController do
  use InstagramPhoenixExample.Web, :controller

  def index(conn, _params) do
    if get_session(conn, :access_token) do
      user = Elixtagram.user(:self, :global)
      media = Elixtagram.user_recent_media(:self, %{count: 12})
      data = %{ user: user, media: media, is_authenticated: true }
    else
      Elixtagram.configure
      data = %{ url: Elixtagram.authorize_url!, is_authenticated: false }
    end

    render conn, "index.html", data: data
  end

  def callback(conn, %{"code" => code}) do
    access_token = Elixtagram.get_token!(code: code).access_token
    Elixtagram.configure(:global, access_token)

    conn
    |> put_session(:access_token, access_token)
    |> configure_session(renew: true)
    |> redirect(to: page_path(conn, :index))
  end
end
