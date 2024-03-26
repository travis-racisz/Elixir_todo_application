defmodule Todoapplication.Task do
  use Ecto.Schema

  schema "tasks" do
    field :title, :string
    field :description, :string
    field :done, :boolean, default: false
    timestamps()
  end

  def changeset(task, attrs) do
    task
    |> Ecto.Changeset.cast(attrs, [:title, :description, :done])
    |> Ecto.Changeset.validate_required([:title, :description])
  end
end
