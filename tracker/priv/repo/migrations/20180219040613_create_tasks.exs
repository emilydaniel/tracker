defmodule Tracker.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string, null: false
      add :descr, :text, null: false
      add :time_spent, :integer, null: false
      add :complete, :boolean, default: false, null: false
      add :user_id, references(:user, on_delete: :nothing)

      timestamps()
    end

    create index(:tasks, [:user_id])
  end
end
