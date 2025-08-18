defmodule Kenya.Data do
  @moduledoc """
  Main data module that provides unified access to all Kenya administrative data.

  This module serves as the primary interface for accessing counties, constituencies,
  and wards data compiled from the official Kenya administrative divisions.

  ## Usage

      # Get all counties
      counties = Kenya.Data.counties()

      # Get constituencies in a county
      mombasa_constituencies = Kenya.Data.constituencies_in_county("001")

      # Get wards in a constituency
      changamwe_wards = Kenya.Data.wards_in_constituency("001")

      # Search by name
      nairobi = Kenya.Data.county("Nairobi")
  """

  alias Kenya.{County, Constituency, Ward, Town, SubCounty}
  alias Kenya.Data.{Counties, Constituencies, Wards, Towns, SubCounties}

  # ===== COUNTIES =====

  @doc """
  Returns all counties (with codes only).
  """
  @spec counties() :: [County.t()]
  def counties, do: Enum.map(Counties.all(), &Kenya.Data.Utils.load_sub_divisions/1)

  @doc """
  Gets a county by code or integer ID or name.

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
  @spec county(String.t() | integer()) :: map() | nil
  def county(identifier), do: Counties.get(identifier)

  # ===== CONSTITUENCIES =====

  @doc """
  Returns all constituencies.
  """
  @spec constituencies() :: [Constituency.t()]
  def constituencies, do: Enum.map(Constituencies.all(), &Kenya.Data.Utils.load_sub_divisions/1)

  @doc """
  Gets a constituency by code or integer ID or name.

  ## Examples

      iex> constituency = Kenya.get_constituency("001")
      iex> constituency.name
      "Mombasa"

      iex> constituency = Kenya.get_constituency(1)  # backwards compatibility
      iex> constituency.name
      "Mombasa"

      iex> constituency = Kenya.get_constituency("Mombasa")
      iex> constituency.name
      "Mombasa"

  """
  @spec constituency(String.t() | integer()) :: map() | nil
  def constituency(identifier), do: Constituencies.get(identifier)

  @spec constituencies_in_county(binary() | integer()) :: list()
  @doc """
  Gets all constituencies in a county.
  """
  def constituencies_in_county(county_code) do
    Constituencies.in_county(county_code)
  end

  # ===== WARDS =====

  @doc """
  Returns all wards.
  """
  @spec wards() :: [Ward.t()]
  def wards, do: Wards.all()

  @doc """
  Returns a ward by code, name, or integer ID.

  ## Examples

      iex> ward = Kenya.get_ward("0001")
      iex> ward.name
      "Port Reitz"

      iex> ward = Kenya.get_ward(1)
      iex> ward.name
      "Port Reitz"

      iex> ward = Kenya.get_ward("Port Reitz")
      iex> ward.name
      "Port Reitz"

  """
  @spec ward(String.t() | integer()) :: map() | nil
  def ward(identifier), do: Wards.get(identifier)

  @doc """
  Gets all wards in a constituency by name, code or integer ID.
  """
  def wards_in_constituency(constituency_identifier),
    do: Wards.in_constituency(constituency_identifier)

  @doc """
  Gets all wards in a county.
  """
  def wards_in_county(county_code), do: Wards.in_county(county_code)

  # ===== STATISTICS =====

  @doc """
  Returns statistics about the data.
  """
  def stats do
    %{
      counties: length(counties()),
      constituencies: length(constituencies()),
      wards: length(wards()),
      towns: length(towns())
    }
  end

  # ===== TOWNS =====

  @doc """
  Returns all towns.
  """
  @spec towns() :: [Town.t()]
  def towns, do: Towns.all()

  @doc """
  Gets a town by code.
  """
  @spec town(String.t()) :: map() | nil
  def town(code), do: Towns.get(code)

  @doc """
  Gets all towns in a specific ward.
  """
  @spec towns_in_ward(String.t()) :: [Town.t()]
  def towns_in_ward(ward_code), do: Towns.get_by_ward(ward_code)

  @doc """
  Gets all towns in a specific constituency.
  """
  @spec towns_in_constituency(String.t()) :: [Town.t()]
  def towns_in_constituency(constituency_code), do: Towns.get_by_constituency(constituency_code)

  @doc """
  Gets all towns in a specific county.
  """
  @spec towns_in_county(String.t()) :: [Town.t()]
  def towns_in_county(county_code), do: Towns.get_by_county(county_code)

  @doc """
  Gets all towns in a specific region.
  """
  @spec towns_in_region(String.t()) :: [Town.t()]
  def towns_in_region(region), do: Towns.get_by_region(region)

  # ===== SUB-COUNTIES =====

  @doc """
  Returns all sub-counties.
  """
  @spec sub_counties() :: [SubCounty.t()]
  def sub_counties, do: Enum.map(SubCounties.all(), &Kenya.Data.Utils.load_sub_divisions/1)

  @doc """
  Gets a sub-county by code or name.

  ## Examples

      iex> changamwe = Kenya.get_sub_county("Changamwe")
      iex> changamwe.name
      "Changamwe"

  """
  @spec sub_county(String.t()) :: map() | nil
  def sub_county(identifier), do: SubCounties.get(identifier)

  @doc """
  Gets all sub-counties in a county.
  """
  @spec sub_counties_in_county(String.t()) :: [SubCounty.t()]
  def sub_counties_in_county(county_identifier),
    do: SubCounties.sub_counties_in_county(county_identifier)

  @doc """
  Gets all counties in a specific region.
  """
  @spec counties_in_region(String.t()) :: [County.t()]
  def counties_in_region(region) do
    counties()
    |> Enum.filter(&(&1.region == region))
  end
end
