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
    County,
    SubCounty,
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
