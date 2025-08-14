defmodule Kenya do
  @moduledoc """
  Kenya is a comprehensive collection of all Kenyan administrative divisions
  including counties, sub-counties, constituencies, and wards with their relevant geographical
  and administrative information.

  This library provides easy access to:

  - **Counties**: All 47 counties with their constituencies and wards
  - **Sub-counties**: Sub-counties with their wards
  - **Constituencies**: Electoral constituencies with their wards
  - **Wards**: The smallest electoral units
  - **Towns**: Urban areas and settlements within wards

  All administrative divisions use proper Kenyan coding:
  - County codes: "001" to "047"
  - Constituency codes: "001" to "289"
  - Ward codes: "0001" to "1450"
  - Town codes: "T001" to "TXXX"

  The complete hierarchy is: **Region → County → Constituency → Ward → Town**

  ## Examples

      # Get all counties
      counties = Kenya.all_counties()
      Enum.count(counties)
      # 47

      # Find a specific county by code
      mombasa = Kenya.get_county("001")
      # %{county_code: "001", name: "Mombasa", constituency_codes: [...], ward_codes: [...]}

      # Find a specific county by name
      mombasa = Kenya.get_county("Mombasa")
      # %{county_code: "001", name: "Mombasa", constituency_codes: [...], ward_codes: [...]}

      # Get county with full constituency and ward details
      mombasa_detailed = Kenya.county_with_details("001", include_constituencies: true, include_wards: true)

      # Get constituencies in a county
      mombasa_constituencies = Kenya.constituencies_in_county("001")

      # Find wards in a constituency
      changamwe_wards = Kenya.list_wards_in_constituency("001")

      # Get towns in a ward
      cbd_towns = Kenya.towns_in_ward("1366")

      # Search by name
      nairobi = Kenya.get_county("Nairobi")

      # Get complete administrative hierarchy for a county
      nairobi_hierarchy = Kenya.county_hierarchy("047")

      # Hierarchical filtering for location selection
      coast_counties = Kenya.all_counties_in_region("Coast")
      mombasa_constituencies = Kenya.constituencies_in_county("001")
      changamwe_wards = Kenya.list_wards_in_constituency("001")
      port_towns = Kenya.towns_in_ward("0001")

  """

  alias Kenya.{County, Constituency, Ward, Town, SubCounty}
  alias Kenya.Data

  # ===== COUNTIES =====

  @doc """
  Returns all counties.

  ## Examples

      iex> counties = Kenya.all_counties()
      iex> length(counties)
      47

  """
  @spec all_counties() :: [County.t()]
  def all_counties, do: Data.counties()

  @doc """
  Gets a county by code or integer ID.

  ## Examples

      iex> mombasa = Kenya.get_county("001")
      iex> mombasa.name
      "Mombasa"

      iex> mombasa = Kenya.get_county(1)  # backwards compatibility
      iex> mombasa.name
      "Mombasa"

  """
  @spec get_county(String.t() | integer() | nil) :: County.t() | nil
  def get_county(nil), do: nil
  def get_county(""), do: nil
  def get_county(code) when is_binary(code), do: Data.county(code)

  def get_county(id) when is_integer(id) do
    code = String.pad_leading(to_string(id), 3, "0")
    Data.county(code)
  end

  @doc """
  Returns all sub-counties.

  ## Examples

      iex> sub_counties = Kenya.sub_counties()
      iex> is_list(sub_counties)
      true

  """
  @spec sub_counties() :: [SubCounty.t(), ...]
  def sub_counties, do: @sub_counties

  @doc """
  Returns all constituencies.

  ## Examples

      iex> constituencies = Kenya.constituencies()
      iex> is_list(constituencies)
      true

  """
  @spec constituencies() :: [Constituency.t(), ...]
  def constituencies, do: @constituencies

  @doc """
  Returns all wards.

  ## Examples

      iex> wards = Kenya.wards()
      iex> is_list(wards)
      true

  """
  @spec wards() :: [Ward.t(), ...]
  def wards, do: @wards

  @doc """
  Returns a county by its code.

  ## Examples

      iex> county = Kenya.county("047")
      iex> county.name
      "Nairobi"

  """
  @spec county(String.t()) :: County.t() | nil
  def county(code) do
    counties()
    |> Enum.find(&(&1.code == code))
  end

  @doc """
  Returns a sub-county by its code.
  """
  @spec sub_county(String.t()) :: SubCounty.t() | nil
  def sub_county(code) do
    sub_counties()
    |> Enum.find(&(&1.code == code))
  end

  @doc """
  Returns a constituency by its code.
  """
  @spec constituency(String.t()) :: Constituency.t() | nil
  def constituency(code) do
    constituencies()
    |> Enum.find(&(&1.code == code))
  end

  @doc """
  Returns a ward by its code.
  """
  @spec ward(String.t()) :: Ward.t() | nil
  def ward(code) do
    wards()
    |> Enum.find(&(&1.code == code))
  end

  @doc """
  Filters counties by a given attribute and value.

  ## Examples

      iex> counties = Kenya.filter_counties(:region, "Central")
      iex> Enum.all?(counties, &(&1.region == "Central"))
      true

      iex> counties = Kenya.filter_counties(:name, "Nairobi")
      iex> Enum.count(counties)
      1

  """
  @spec filter_counties(attribute :: atom(), value :: any()) :: [County.t(), ...]
  def filter_counties(attribute, value) do
    filter_by(counties(), attribute, value)
  end

  @doc """
  Filters sub-counties by a given attribute and value.
  """
  @spec filter_sub_counties(attribute :: atom(), value :: any()) :: [SubCounty.t(), ...]
  def filter_sub_counties(attribute, value) do
    filter_by(sub_counties(), attribute, value)
  end

  @doc """
  Filters constituencies by a given attribute and value.
  """
  @spec filter_constituencies(attribute :: atom(), value :: any()) :: [Constituency.t(), ...]
  def filter_constituencies(attribute, value) do
    filter_by(constituencies(), attribute, value)
  end

  @doc """
  Filters wards by a given attribute and value.
  """
  @spec filter_wards(attribute :: atom(), value :: any()) :: [Ward.t(), ...]
  def filter_wards(attribute, value) do
    filter_by(wards(), attribute, value)
  end


  @doc """
  Checks if an administrative division exists by attribute and value.

  ## Examples

      iex> Kenya.county_exists?(:name, "Nairobi")
      true

      iex> Kenya.county_exists?(:name, "Atlantis")
      false

  """
end
