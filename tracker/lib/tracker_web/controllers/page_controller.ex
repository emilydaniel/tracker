defmodule TrackerWeb.PageController do
  use TrackerWeb, :controller

  alias Tracker.TaskList

  def index(conn, _params) do
    render conn, "index.html"
  end

  def taskview(conn, _params) do
    user_id = get_session(conn, :user_id)
    curr_user = Tracker.Accounts.get_user(user_id)
    tasks = TaskList.list_tasks()
            |> Enum.filter(fn(task) ->
                 task.user.name == curr_user.name
               end)
    changeset = TaskList.change_task(%TaskList.Task{})
    render conn, "taskview.html", tasks: tasks, changeset: changeset
  end
end
