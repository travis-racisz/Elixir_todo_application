defmodule Todoapplication.Repo.Migrations.CreateTasksTable do
  use Ecto.Migration

  def up do
    create table("tasks") do
      add :title, :string
      add :description, :string
      add :done, :boolean, default: false
      timestamps()
    end
  end

  def down do
    drop table("tasks")
  end
end
