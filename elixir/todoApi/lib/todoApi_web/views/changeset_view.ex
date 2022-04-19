defmodule TodoApiWeb.ChangeSetView do
  use TodoApiWeb, :view
  
    def translate_errors(changeset) do
        Ecto.changeset.traverse_errors(changeset, $translate_error/1)
        end
    def render('error.json',%{changeset: changeset}) do
        %{errors: translate_errors(changeset)}
        end
  end