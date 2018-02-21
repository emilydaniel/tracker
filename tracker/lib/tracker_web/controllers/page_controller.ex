defmodule TrackerWeb.PageController do
  use TrackerWeb, :controller

  alias Tracker.TaskList

  def index(conn, _params) do
    render conn, "index.html"
  end

  def taskview(conn, _params) do
    tasks = TaskList.list_tasks()
    changeset = TaskList.change_task(%TaskList.Task{})
    render conn, "taskview.html", tasks: tasks, changeset: changeset
  end
end
