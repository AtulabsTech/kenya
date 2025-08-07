defmodule Kenya.County do
  @moduledoc """
  County struct representing the 47 counties of Kenya.
  """

  defstruct [
    :code,
    :name,
    :headquarter,
    :area_km2,
    :population,
    :region,
    :coordinates,
    :postal_codes,
    :website,
    :constituency_codes,
    :sub_county_codes,
    :ward_codes,
    :town_codes
  ]

  @type t :: %__MODULE__{
          code: String.t(),
          name: String.t(),
          headquarter: String.t(),
          area_km2: float() | nil,
          population: integer() | nil,
          region: String.t(),
          coordinates: %{latitude: float(), longitude: float()},
          postal_codes: [String.t()],
          website: String.t() | nil,
          constituency_codes: [String.t()],
          sub_county_codes: [String.t()],
          ward_codes: [String.t()] | nil,
          town_codes: [String.t()]
        }
end
