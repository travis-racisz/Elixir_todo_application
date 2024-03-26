defmodule Todoapplication.TaskController do
  import Ecto.Query
  alias Todoapplication.Task, as: Task
  alias Todoapplication.Repo

  def get_all_tasks do
    query =
      from t in Task,
        select: t

    Repo.all(query)
  end

  def get_task!(id) do
    query =
      from t in Task,
        where: t.id == ^id,
        select: t

    Repo.all(query)
  end

  def create_task(attrs) do
    %Task{}
    |> Task.changeset(attrs)
    |> Repo.insert()
  end

  def update_task(id, attr) do
    get_task!(id)
    |> Task.changeset(attr)
    |> Repo.insert()
  end

  def delete_task(id) do
    get_task!(id)
    |> Repo.delete()
  end
end
