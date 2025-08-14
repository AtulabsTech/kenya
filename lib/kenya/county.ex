defmodule Kenya.County do
  @moduledoc """
  County struct representing the 47 counties of Kenya.

  Uses proper Kenyan administrative codes ("001" to "047").
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
    :city_codes
  ]

  @type t :: %__MODULE__{
          code: String.t(),
          name: String.t(),
          headquarter: String.t() | nil,
          area_km2: float() | nil,
          population: integer() | nil,
          region: String.t() | nil,
          coordinates: %{latitude: float(), longitude: float()} | nil,
          postal_codes: [String.t()] | nil,
          website: String.t() | nil,
          constituency_codes: [String.t()],
          sub_county_codes: [String.t()] | nil,
          ward_codes: [String.t()],
          city_codes: [String.t()] | nil
        }
end
