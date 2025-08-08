defmodule Kenya.SubCounty do
  @moduledoc """
  Sub-county struct representing administrative subdivisions within counties.
  """

  defstruct [
    :code,
    :name,
    :county_code,
    :county_name,
    :area_km2,
    :population,
    :coordinates,
    :postal_codes,
    :administrative_type
  ]

  @type t :: %__MODULE__{
          code: String.t(),
          name: String.t(),
          county_code: String.t(),
          county_name: String.t(),
          area_km2: float() | nil,
          population: integer() | nil,
          coordinates: %{latitude: float(), longitude: float()} | nil,
          postal_codes: [String.t()],
          administrative_type: String.t()
        }
end
