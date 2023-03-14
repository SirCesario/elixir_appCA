defmodule AppColegio.Domain.Model.Instituto do

  defstruct [
    :id,
    :nombre,
    :ciudad,
    :direccion,
    :telefono,
  ]


  @type t() :: %__MODULE__{id: binary(),
  nombre: String.t(),
  ciudad: String.t(),
  direccion: String.t(),
  telefono: String.t()
}

 def new(id, _, _, _, _) when(is_nil(id)), do: {:error, :instituto_invalido}
 def new(id, nombre, ciudad, direccion, telefono) do
  {
    :ok,
    %__MODULE__{
      id: id,
      nombre: nombre,
      ciudad: ciudad,
      direccion: direccion,
      telefono: telefono
    }
  }
 end

 def find_by_id(id) do
  {
    :ok,
    %__MODULE__{
      id: id,
    }
  }
 end


end
