defmodule TodoApiWeb.FallbackController do

    use TodoApiWeb, :controller

    
    def call(conn, {:error, %Ecto.changeset{} = changeset}) do
    conn

    |> put_status(:unprocessable_entity)
    |> put_view(TodoApiWeb.ChangeSetView)
    |> render("error.json", changeset: changeset)

    def call(conn, {:error, :not_found}) do
    conn

    |> put_status(:not_found)
    |> put_view(TodoApiWeb.ErrorView)
    |> render(:"404")

end