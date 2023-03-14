defmodule AppColegio.Domain.UseCases.PostInstitutoUsecase do

  alias AppColegio.Domain.Model.Instituto
  require Logger

  @instituto_behaviour Application.compile_env(:app_colegio, :instituto_behaviour)
  @generate_uuid_behaviour Application.compile_env(:app_colegio, :generate_uuid_behaviour)

  @spec post(map()) :: {:erro, atom()} | {:ok, Instituto.t()}

  def post(data) do
    map_with_id = Map.put(data, :id, generate_uuid_instituto())

    with {:ok, instituto} <- Instituto.new(map_with_id[:id], map_with_id[:nombre], map_with_id[:ciudad], map_with_id[:direccion], map_with_id[:telefono]),
    {:ok, new_instituto} <- post_instituto(instituto) do
      Logger.info("Nuevo Propietario Creado :  #{inspect(new_instituto)}")
      {:ok, new_instituto}
    end
  end

  def

end
