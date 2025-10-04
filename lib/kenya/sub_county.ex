defmodule Kenya.SubCounty do
  @moduledoc """
  Sub-county struct representing administrative subdivisions within counties.

  Uses proper Kenyan administrative codes.
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
          county_name: String.t() | nil,
          area_km2: float() | nil,
          population: integer() | nil,
          coordinates: %{latitude: float(), longitude: float()} | nil,
          postal_codes: [String.t()] | nil,
          administrative_type: String.t() | nil
        }
end
