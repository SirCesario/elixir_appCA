defmodule AppColegio.Domain.Behaviours.Generic.InstitutoBehaviour do
  alias AppColegio.Domain.Model.Instituto

@callback post(Instituto.t()) :: {:ok, Instituto.t()} | {:error, reason::atom()}
@callback find_by_id(String.t()) :: {:ok, Instituto.t()} | {:error, reason::atom()}

end
