defmodule Featex.Repo do
  use Ecto.Repo,
    otp_app: :featex,
    adapter: Ecto.Adapters.Postgres
end
