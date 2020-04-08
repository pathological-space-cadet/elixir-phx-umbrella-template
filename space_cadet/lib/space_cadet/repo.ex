defmodule SpaceCadet.Repo do
  use Ecto.Repo,
    otp_app: :space_cadet,
    adapter: Ecto.Adapters.Postgres
end
