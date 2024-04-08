defmodule TodoapplicationWeb.PageController do
  alias Todoapplication.TaskController
  use TodoapplicationWeb, :controller

  def home(conn, _params) do
    todos = TaskController.get_all_tasks()
    render(conn, :home, todos: todos)
  end
end
