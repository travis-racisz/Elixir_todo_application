defmodule TodoapplicationWeb.TaskController do
  use TodoapplicationWeb, :controller
  alias Todoapplication.TaskController
  alias Todoapplication.Task

  def index(conn, _params) do
    task = %Task{}
    changeset = TaskController.change_task(task)
    render(conn, :create, changeset: changeset)
  end

  def create(conn, %{"title" => title, "description" => description}) do
    task = %{title: title, description: description}
    {:ok, task} = Todoapplication.TaskController.create_task(task)

    changeset = TaskController.change_task(task)

    redirect(conn, to: "/")
  end

  def show(conn, %{"id" => id}) do
    task = TaskController.get_task!(id)
    render(conn, :show, task: task)
  end

  def update(conn, _params) do
    render(conn, :update)
  end

  def delete(conn, _params) do
    render(conn, :delete)
  end
end
