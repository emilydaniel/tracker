defmodule Tracker.TaskList.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.TaskList.Task


  schema "tasks" do
    field :complete, :boolean, default: false
    field :descr, :string
    field :time_spent, :integer
    field :title, :string
    belongs_to :user, Tracker.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :descr, :time_spent, :complete, :user_id])
    |> validate_required([:title, :descr, :time_spent, :complete, :user_id])
  end
end
