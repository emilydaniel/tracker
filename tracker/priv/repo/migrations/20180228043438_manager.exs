defmodule Tracker.Repo.Migrations.Manager do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :manager, references(:users, on_delete: :delete_all)
      add :underling, references(:users, on_delete: :delete_all)
    end
  end
end
