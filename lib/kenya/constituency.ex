defmodule Kenya.Constituency do
  @moduledoc """
  Constituency struct representing electoral constituencies.
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
    :town_codes
  ]

  @type t :: %__MODULE__{
          code: String.t(),
          name: String.t(),
          county_code: String.t(),
          county_name: String.t(),
          area_km2: float() | nil,
          population: integer() | nil,
          registered_voters: integer() | nil,
          coordinates: %{latitude: float(), longitude: float()} | nil,
          town_codes: [String.t()] | nil
        }
end
