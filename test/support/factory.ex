defmodule Kothata.Factory do
  use ExMachina.Ecto, repo: Kothata.Repo
  use Kothata.UserFactory
end
