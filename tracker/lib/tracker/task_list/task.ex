defmodule Tracker.TaskList.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.TaskList.Task


  schema "tasks" do
    field :complete, :boolean, default: false
    field :descr, :string
    field :time_spent, :integer
    field :title, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :descr, :time_spent, :complete])
    |> validate_required([:title, :descr, :time_spent, :complete])
  end
end
