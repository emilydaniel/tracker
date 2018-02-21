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
    |> validate_fifteen_min(:time_spent)
  end

  #adapted from Vikram Ramakrishnan's examples in the post
  #https://medium.com/@QuantLayer/more-custom-validations-for-ecto-changesets-17f3641be2a0
  def validate_fifteen_min(changeset, time_spent) do
    case changeset.valid? do
      true ->
        ts = get_field(changeset, time_spent)
        case rem(ts, 15) do
          0 ->
            changeset
          _ ->
            add_error(changeset, :time_spent, "Must be in 15 min increments.")
        end
      _ ->
        changeset 
    end
  end
end
