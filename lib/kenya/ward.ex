defmodule Kenya.Ward do
  @moduledoc """
  Ward struct representing the smallest electoral units.

  Uses proper Kenyan administrative codes ("0001" to "1450").
  """

  defstruct [
    :code,
    :name,
    :constituency_code,
    :constituency_name,
    :county_code,
    :county_name,
    :area_km2,
    :population,
    :registered_voters,
    :mca_name,
    :mca_party,
    :coordinates,
    :town_codes,
    :residential_areas
  ]

  @type t :: %__MODULE__{
          code: String.t(),
          name: String.t(),
          constituency_code: String.t(),
          constituency_name: String.t() | nil,
          county_code: String.t(),
          county_name: String.t() | nil,
          area_km2: float() | nil,
          population: integer() | nil,
          registered_voters: integer() | nil,
          mca_name: String.t() | nil,
          mca_party: String.t() | nil,
          coordinates: %{latitude: float(), longitude: float()} | nil,
          town_codes: [String.t()] | nil,
          residential_areas: [String.t()] | nil
        }
end
