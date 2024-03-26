defmodule TodoapplicationWeb.TodoController do
  alias Todoapplication.TaskController
  use TodoapplicationWeb, :controller

  def get_all_tasks(conn, _params) do
    todos = TaskController.get_all_tasks()
    render(conn, :get_all_tasks, todos: todos)
  end
end
