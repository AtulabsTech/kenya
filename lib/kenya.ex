defmodule Kenya do
  @moduledoc """
  Kenya is a comprehensive collection of all Kenyan administrative divisions
  including counties, sub-counties, constituencies, wards, and cities/towns
  with their relevant geographical and administrative information.

  This library provides easy access to:

  - **Counties**: All 47 counties with capitals, areas, populations, and administrative details
  - **Sub-Counties**: Administrative subdivisions within counties
  - **Constituencies**: Electoral constituencies with MP information
  - **Wards**: The smallest electoral units with MCA information
  - **Cities**: Major urban centers with municipal information

  ## Examples

      # Get all counties
      counties = Kenya.counties()
      Enum.count(counties)
      # 47

      # Find a specific county
      nairobi = Kenya.county("047")
      # %Kenya.County{name: "Nairobi", capital: "Nairobi", ...}

      # Filter counties by region
      central_counties = Kenya.filter_counties(:region, "Central")

      # Get constituencies in a county
      nairobi_constituencies = Kenya.constituencies_in_county("047")

      # Find wards in a constituency
      wards = Kenya.wards_in_constituency("001")

  """

  import Kenya.Utils, only: [normalize: 1]

  alias Kenya.{
    Constituency,
    Loader,
    County
  }

  # Ensure :yamerl is running
  Application.start(:yamerl)

  # Load data at compile time
  @counties Loader.load_counties()
  @sub_counties Loader.load_sub_counties()
  @constituencies Loader.load_constituencies()
  @wards Loader.load_wards()
  @cities Loader.load_cities()

  @doc """
  Returns all counties.

  ## Examples

      iex> counties = Kenya.counties()
      iex> Enum.count(counties)
      47

  """
  @spec counties() :: [County.t(), ...]
  def counties, do: @counties

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
  Checks if an administrative division exists by attribute and value.

  ## Examples

      iex> Kenya.county_exists?(:name, "Nairobi")
      true

      iex> Kenya.county_exists?(:name, "Atlantis")
      false

  """
end
