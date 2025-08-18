defmodule Kenya do
  @moduledoc """
  Kenya is a comprehensive collection of all Kenyan administrative divisions
  including counties, sub-counties, constituencies, and wards with their relevant geographical
  and administrative information.

  This library provides easy access to:

  - **Counties**: All 47 counties with their constituencies and wards
  - **Sub-counties**: Sub-counties with their wards
  - **Constituencies**: Electoral constituencies with their wards
  - **Wards**: The smallest electoral units and details about residential/urban areas

  All administrative divisions use proper Kenyan coding:
  - County codes: "001" to "047"
  - Sub-county codes: "001" to "XXX"
  - Constituency codes: "001" to "289"
  - Ward codes: "0001" to "1450"

  The complete hierarchy is: **Region → County → Constituency → Ward → Town**

  ## Examples

      # Get all counties
      counties = Kenya.all_counties()
      Enum.count(counties)
      # 47

      # Find a specific county by code
      mombasa = Kenya.get_county("001")
      # %{code: "001", name: "Mombasa", constituency_codes: [...], constituencies: [%{code: "001", name: "Changamwe", wards: [...]}]}

      # Find a specific county by name
      mombasa = Kenya.get_county("Mombasa")
      # %{code: "001", name: "Mombasa", constituency_codes: [...], constituencies: [%{code: "001", name: "Changamwe", wards: [...]}]}

      # Get constituencies in a county
      mombasa_constituencies = Kenya.all_constituencies_in_county("001")

      # Find wards in a constituency
      changamwe_wards = Kenya.list_wards_in_constituency("001")

      # Search by name
      nairobi = Kenya.get_county("Nairobi")

      # Hierarchical filtering for location selection
      coast_counties = Kenya.all_counties_in_region("Coast")
      mombasa_constituencies = Kenya.all_constituencies_in_county("001")
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
  Gets a county by code, integer ID or name.

  ## Examples

      iex> mombasa = Kenya.get_county("001")
      iex> mombasa.name
      "Mombasa"

      iex> mombasa = Kenya.get_county(1)  # backwards compatibility
      iex> mombasa.name
      "Mombasa"

      iex> mombasa = Kenya.get_county("Mombasa")
      iex> mombasa.name
      "Mombasa"

  """
  @spec get_county(String.t() | integer() | nil) :: County.t() | nil
  def get_county(nil), do: nil
  def get_county(""), do: nil
  def get_county(identifier), do: Data.county(identifier)

  @doc """
  Filters counties by the given criteria.

  ## Examples

      iex> coast_counties = Kenya.filter_counties(:region, "Coast")
      iex> length(coast_counties) == 6
      true

      iex> coast_counties = Kenya.filter_counties(Kenya.all_counties(), %{region: "Coast"})
      iex> length(coast_counties)
      6

  """
  @spec filter_counties(atom(), any()) :: [County.t()]
  def filter_counties(field, value) when is_atom(field) do
    all_counties() |> Enum.filter(fn county -> Map.get(county, field) == value end)
  end

  @spec filter_counties([County.t()], map()) :: [County.t()]
  def filter_counties(counties, criteria) when is_list(counties) and is_map(criteria) do
    Enum.filter(counties, fn county ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(county, key) == value
      end)
    end)
  end

  # ===== CONSTITUENCIES =====

  @doc """
  Returns all constituencies.

  ## Examples

      iex> constituencies = Kenya.all_constituencies()
      iex> length(constituencies)
      289

  """
  @spec all_constituencies() :: [Constituency.t()]
  def all_constituencies, do: Data.constituencies()

  @doc """
  Gets a constituency by code or integer ID.

  ## Examples

      iex> constituency = Kenya.get_constituency("001")
      iex> constituency.name
      "Changamwe"

      iex> constituency = Kenya.get_constituency(1)
      iex> constituency.name
      "Changamwe"

      iex> constituency = Kenya.get_constituency("Changamwe")
      iex> constituency.name
      "Changamwe"

  """
  @spec get_constituency(String.t() | integer() | nil) :: Constituency.t() | nil
  def get_constituency(nil), do: nil
  def get_constituency(""), do: nil
  def get_constituency(identifier), do: Data.constituency(identifier)

  @doc """
  Gets all constituencies in a county by code or integer ID, or name.

  ## Examples
      iex> constituencies = Kenya.all_constituencies_in_county("001")
      iex> length(constituencies)
      6

      iex> constituencies = Kenya.all_constituencies_in_county(1)
      iex> length(constituencies)
      6

      iex> constituencies = Kenya.all_constituencies_in_county("Mombasa")
      iex> length(constituencies)
      6
  """
  @spec all_constituencies_in_county(String.t() | integer()) :: [Constituency.t()]
  def all_constituencies_in_county(identifier) when is_binary(identifier),
    do: Data.constituencies_in_county(identifier)

  def all_constituencies_in_county(county_id) when is_integer(county_id) do
    code = String.pad_leading(to_string(county_id), 3, "0")
    Data.constituencies_in_county(code)
  end

  @doc """
  Filters constituencies by the given criteria.

  ## Examples

      iex> mombasa_constituencies = Kenya.filter_constituencies(:county_code, "001")
      iex> length(mombasa_constituencies) >= 1
      true

  """
  @spec filter_constituencies(atom(), any()) :: [Constituency.t()]
  def filter_constituencies(field, value) when is_atom(field) do
    all_constituencies()
    |> Enum.filter(fn constituency -> Map.get(constituency, field) == value end)
  end

  @spec filter_constituencies([Constituency.t()], map()) :: [Constituency.t()]
  def filter_constituencies(constituencies, criteria)
      when is_list(constituencies) and is_map(criteria) do
    Enum.filter(constituencies, fn constituency ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(constituency, key) == value
      end)
    end)
  end

  # ===== WARDS =====

  @doc """
  Returns all wards.
  """
  @spec all_wards() :: [Ward.t()]
  def all_wards, do: Data.wards()

  @doc """
  Gets a ward by name, code or integer ID.
  """
  @spec get_ward(String.t() | integer() | nil) :: Ward.t() | nil
  def get_ward(nil), do: nil
  def get_ward(""), do: nil
  def get_ward(identifier), do: Data.ward(identifier)

  @doc """
  Filters wards by the given criteria.

  ## Examples

      iex> mombasa_wards = Kenya.filter_wards(:county_code, "001")
      iex> length(mombasa_wards) >= 1
      true

      iex> changamwe_wards = Kenya.filter_wards(:constituency_code, "001")
      iex> length(changamwe_wards) >= 1
      true

  """
  @spec filter_wards(atom(), any()) :: [Ward.t()]
  def filter_wards(field, value) when is_atom(field) do
    all_wards() |> Enum.filter(fn ward -> Map.get(ward, field) == value end)
  end

  @spec filter_wards([Ward.t()], map()) :: [Ward.t()]
  def filter_wards(wards, criteria) when is_list(wards) and is_map(criteria) do
    Enum.filter(wards, fn ward ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(ward, key) == value
      end)
    end)
  end

  @doc """
  Gets all wards in a constituency by code or integer ID.

  ## Examples

      iex> wards = Kenya.all_wards_in_constituency("001")
      iex> length(wards)
      5

      iex> wards = Kenya.all_wards_in_constituency(1)
      iex> length(wards)
      5

      iex> wards = Kenya.all_wards_in_constituency("changamwe")
      iex> length(wards)
      5

  """
  @spec all_wards_in_constituency(String.t() | integer()) :: [Ward.t()]
  def all_wards_in_constituency(constituency_code) when is_binary(constituency_code),
    do: Data.wards_in_constituency(constituency_code)

  def all_wards_in_constituency(constituency_id) when is_integer(constituency_id) do
    code = String.pad_leading(to_string(constituency_id), 3, "0")
    Data.wards_in_constituency(code)
  end

  @doc """
  Gets all wards in a county by code or integer ID.
  """
  @spec all_wards_in_county(String.t() | integer()) :: [Ward.t()]
  def all_wards_in_county(county_code) when is_binary(county_code),
    do: Data.wards_in_county(county_code)

  def all_wards_in_county(county_id) when is_integer(county_id) do
    code = String.pad_leading(to_string(county_id), 3, "0")
    Data.wards_in_county(code)
  end

  # ===== TOWNS =====

  @doc """
  Returns all towns.

  ## Examples

      iex> towns = Kenya.towns()
      iex> length(towns) >= 20
      true

  """
  @spec towns() :: [Town.t()]
  def towns, do: Data.towns()

  @doc """
  Gets a town by code.

  ## Examples

      iex> moyale = Kenya.town("T001")
      iex> moyale.name
      "Moyale"

  """
  @spec town(String.t() | nil) :: Town.t() | nil
  def town(nil), do: nil
  def town(""), do: nil
  def town(code), do: Data.town(code)

  @doc """
  Gets all towns in a specific ward.

  ## Examples

      iex> cbd_towns = Kenya.towns_in_ward("1366")
      iex> length(cbd_towns) >= 1
      true

  """
  @spec towns_in_ward(String.t()) :: [Town.t()]
  def towns_in_ward(ward_code), do: Data.towns_in_ward(ward_code)

  @doc """
  Gets all towns in a specific constituency.

  ## Examples

      iex> nairobi_central_towns = Kenya.towns_in_constituency("274")
      iex> length(nairobi_central_towns) >= 1
      true

  """
  @spec towns_in_constituency(String.t()) :: [Town.t()]
  def towns_in_constituency(constituency_code), do: Data.towns_in_constituency(constituency_code)

  @doc """
  Gets all towns in a specific county.

  ## Examples

      iex> nairobi_towns = Kenya.towns_in_county("047")
      iex> length(nairobi_towns) >= 1
      true

  """
  @spec towns_in_county(String.t() | integer()) :: [Town.t()]
  def towns_in_county(county_code) when is_binary(county_code),
    do: Data.towns_in_county(county_code)

  def towns_in_county(county_id) when is_integer(county_id) do
    code = String.pad_leading(to_string(county_id), 3, "0")
    Data.towns_in_county(code)
  end

  @doc """
  Gets all towns in a specific region.

  ## Examples

      iex> coast_towns = Kenya.towns_in_region("Coast")
      iex> length(coast_towns) >= 3
      true

  """
  @spec towns_in_region(String.t()) :: [Town.t()]
  def towns_in_region(region), do: Data.towns_in_region(region)

  @doc """
  Gets all counties in a specific region (for hierarchical selection).

  ## Examples

      iex> coast_counties = Kenya.all_counties_in_region("Coast")
      iex> length(coast_counties) == 6
      true

  """
  @spec all_counties_in_region(String.t()) :: [County.t()]
  def all_counties_in_region(region), do: Data.counties_in_region(region)

  @doc """
  Gets a town by the given criteria.

  ## Examples

      iex> nairobi = Kenya.get_town_by(:name, "Nairobi")
      iex> nairobi.code
      "T033"

  """
  @spec get_town_by(atom(), any()) :: Town.t() | nil
  def get_town_by(field, value) do
    towns() |> Enum.find(fn town -> Map.get(town, field) == value end)
  end

  @doc """
  Filters towns by the given criteria.

  ## Examples

      iex> rift_valley_towns = Kenya.filter_towns(:region, "Rift Valley")
      iex> length(rift_valley_towns) >= 3
      true

  """
  @spec filter_towns(atom(), any()) :: [Town.t()]
  def filter_towns(field, value) when is_atom(field) do
    towns() |> Enum.filter(fn town -> Map.get(town, field) == value end)
  end

  @spec filter_towns([Town.t()], map()) :: [Town.t()]
  def filter_towns(towns, criteria) when is_list(towns) and is_map(criteria) do
    Enum.filter(towns, fn town ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(town, key) == value
      end)
    end)
  end

  # ===== SUB-COUNTIES =====

  @doc """
  Returns all sub-counties.

  ## Examples

      iex> all_sub_counties = Kenya.all_sub_counties()
      iex> length(all_sub_counties) >= 50
      true

  """
  @spec all_sub_counties() :: [SubCounty.t()]
  def all_sub_counties, do: Data.sub_counties()

  @doc """
  Gets a sub-county by code, integer ID or name.

  ## Examples

      iex> changamwe = Kenya.get_sub_county("001001")
      iex> changamwe.name
      "Changamwe"

      iex> changamwe = Kenya.get_sub_county(001001)  # backwards compatibility
      iex> changamwe.name
      "Changamwe"

      iex> changamwe = Kenya.get_sub_county("Changamwe")
      iex> changamwe.name
      "Changamwe"

  """
  @spec get_sub_county(String.t() | integer() | nil) :: SubCounty.t() | nil
  def get_sub_county(nil), do: nil
  def get_sub_county(""), do: nil
  def get_sub_county(identifier), do: Data.sub_county(identifier)

  @spec all_county_sub_counties(String.t()) :: [SubCounty.t()]
  def all_county_sub_counties(county_identifier),
    do: Data.sub_counties_in_county(county_identifier)

  @doc """
  Filters sub-counties by the given criteria.

  ## Examples

      iex> mombasa_sub_counties = Kenya.filter_sub_counties(:county_code, "001")
      iex> length(mombasa_sub_counties) == 6
      true

  """
  @spec filter_sub_counties(atom(), any()) :: [SubCounty.t()]
  def filter_sub_counties(field, value) when is_atom(field) do
    Data.SubCounties.filter_by(field, value)
  end

  @spec filter_sub_counties([SubCounty.t()], map()) :: [SubCounty.t()]
  def filter_sub_counties(sub_counties, criteria)
      when is_list(sub_counties) and is_map(criteria) do
    Enum.filter(sub_counties, fn sub_county ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(sub_county, key) == value
      end)
    end)
  end

  # ===== STATISTICS =====

  @doc """
  Returns statistics about the administrative divisions.

  ## Examples

      iex> stats = Kenya.stats()
      iex> stats.counties
      47

  """
  def stats, do: Data.stats()
end
