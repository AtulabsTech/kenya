defmodule Kenya.Constituency do
  @moduledoc """
  Constituency struct representing electoral constituencies.

  Uses proper Kenyan administrative codes ("001" to "289").
  """

  defstruct [
    :code,
    :name,
    :county_code,
    :county_name,
    :area_km2,
    :population,
    :registered_voters,
    :coordinates,
    :ward_codes
  ]

  @type t :: %__MODULE__{
          code: String.t(),
          name: String.t(),
          county_code: String.t(),
          county_name: String.t() | nil,
          area_km2: float() | nil,
          population: integer() | nil,
          registered_voters: integer() | nil,
          coordinates: %{latitude: float(), longitude: float()} | nil,
          ward_codes: [String.t()]
        }
end
