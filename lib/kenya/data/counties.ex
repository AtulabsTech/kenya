defmodule Kenya.Data.Counties do
  @moduledoc """
  Compiled county data for Kenya.

  This module contains the complete list of Kenya's 47 counties with their
  associated constituency and ward codes using proper Kenyan coding system.

  Data source: https://github.com/pkiage/data-Kenya-Counties-Constituencies-Wards
  """

  alias Kenya.County
  alias Kenya.Data.Utils

  @counties [
    %County{
      code: "001",
      name: "Mombasa",
      region: "Coast",
      constituency_codes: ["001", "002", "003", "004", "005", "006"]
    },
    %County{
      code: "002",
      name: "Kwale",
      region: "Coast",
      constituency_codes: ["007", "008", "009", "010"]
    },
    %County{
      code: "003",
      name: "Kilifi",
      region: "Coast",
      constituency_codes: ["011", "012", "013", "014", "015", "016", "017"]
    },
    %County{
      code: "004",
      name: "Tana River",
      region: "Coast",
      constituency_codes: ["018", "019", "020"]
    },
    %County{
      code: "005",
      name: "Lamu",
      region: "Coast",
      constituency_codes: ["021", "022"]
    },
    %County{
      code: "006",
      name: "Taita Taveta",
      region: "Coast",
      constituency_codes: ["023", "024", "025", "026"]
    },
    %County{
      code: "007",
      name: "Garissa",
      region: "North Eastern",
      constituency_codes: ["027", "028", "029", "030", "031", "032"]
    },
    %County{
      code: "008",
      name: "Wajir",
      region: "North Eastern",
      constituency_codes: ["033", "034", "035", "036", "037", "038"]
    },
    %County{
      code: "009",
      name: "Mandera",
      region: "North Eastern",
      constituency_codes: ["039", "040", "041", "042", "043", "044"]
    },
    %County{
      code: "010",
      name: "Marsabit",
      region: "Eastern",
      constituency_codes: ["045", "046", "047", "048"]
    },
    %County{
      code: "011",
      name: "Isiolo",
      region: "Eastern",
      constituency_codes: ["049", "050"]
    },
    %County{
      code: "012",
      name: "Meru",
      region: "Eastern",
      constituency_codes: ["051", "052", "053", "054", "055", "056", "057", "058", "059"]
    },
    %County{
      code: "013",
      name: "THARAKA-NITHI",
      region: "Eastern",
      constituency_codes: ["060", "061", "062"]
    },
    %County{
      code: "014",
      name: "Embu",
      region: "Eastern",
      constituency_codes: ["063", "064", "065", "066"]
    },
    %County{
      code: "015",
      name: "Kitui",
      region: "Eastern",
      constituency_codes: ["067", "068", "069", "070", "071", "072", "073", "074"]
    },
    %County{
      code: "016",
      name: "Machakos",
      region: "Eastern",
      constituency_codes: ["075", "076", "077", "078", "079", "080", "081", "082"]
    },
    %County{
      code: "017",
      name: "Makueni",
      region: "Eastern",
      constituency_codes: ["083", "084", "085", "086", "087", "088"]
    },
    %County{
      code: "018",
      name: "Nyandarua",
      region: "Central",
      constituency_codes: ["089", "090", "091", "092", "093"]
    },
    %County{
      code: "019",
      name: "Nyeri",
      region: "Central",
      constituency_codes: ["094", "095", "096", "097", "098", "099"]
    },
    %County{
      code: "020",
      name: "Kirinyaga",
      region: "Central",
      constituency_codes: ["100", "101", "102", "103"]
    },
    %County{
      code: "021",
      name: "MURANG'A",
      region: "Central",
      constituency_codes: ["104", "105", "106", "107", "108", "109", "110"]
    },
    %County{
      code: "022",
      name: "Kiambu",
      region: "Central",
      constituency_codes: [
        "111",
        "112",
        "113",
        "114",
        "115",
        "116",
        "117",
        "118",
        "119",
        "120",
        "121",
        "122"
      ]
    },
    %County{
      code: "023",
      name: "Turkana",
      region: "Rift Valley",
      constituency_codes: ["123", "124", "125", "126", "127", "128"]
    },
    %County{
      code: "024",
      name: "West Pokot",
      region: "Rift Valley",
      constituency_codes: ["129", "130", "131", "132"]
    },
    %County{
      code: "025",
      name: "Samburu",
      region: "Rift Valley",
      constituency_codes: ["133", "134", "135"]
    },
    %County{
      code: "026",
      name: "Trans Nzoia",
      region: "Rift Valley",
      constituency_codes: ["136", "137", "138", "139", "140"]
    },
    %County{
      code: "027",
      name: "Uasin Gishu",
      region: "Rift Valley",
      constituency_codes: ["141", "142", "143", "144", "145", "146"]
    },
    %County{
      code: "028",
      name: "Elgeyo Marakwet",
      region: "Rift Valley",
      constituency_codes: ["147", "148", "149", "150"]
    },
    %County{
      code: "029",
      name: "Nandi",
      region: "Rift Valley",
      constituency_codes: ["151", "152", "153", "154", "155", "156"]
    },
    %County{
      code: "030",
      name: "Baringo",
      region: "Rift Valley",
      constituency_codes: ["157", "159", "160", "161", "162"]
    },
    %County{
      code: "031",
      name: "Laikipia",
      region: "Rift Valley",
      constituency_codes: ["163", "164", "165"]
    },
    %County{
      code: "032",
      name: "Nakuru",
      region: "Rift Valley",
      constituency_codes: [
        "166",
        "167",
        "168",
        "169",
        "170",
        "171",
        "172",
        "173",
        "174",
        "175",
        "176"
      ]
    },
    %County{
      code: "033",
      name: "Narok",
      region: "Rift Valley",
      constituency_codes: ["177", "178", "179", "180", "181", "182"]
    },
    %County{
      code: "034",
      name: "Kajiado",
      region: "Rift Valley",
      constituency_codes: ["183", "184", "185", "186", "187"]
    },
    %County{
      code: "035",
      name: "Kericho",
      region: "Rift Valley",
      constituency_codes: ["188", "189", "190", "191", "192", "193"]
    },
    %County{
      code: "036",
      name: "Bomet",
      region: "Rift Valley",
      constituency_codes: ["194", "195", "196", "197", "198"]
    },
    %County{
      code: "037",
      name: "Kakamega",
      region: "Western",
      constituency_codes: [
        "199",
        "200",
        "201",
        "202",
        "203",
        "204",
        "205",
        "206",
        "207",
        "208",
        "209",
        "210"
      ]
    },
    %County{
      code: "038",
      name: "Vihiga",
      region: "Western",
      constituency_codes: ["211", "212", "213", "214", "215"]
    },
    %County{
      code: "039",
      name: "Bungoma",
      region: "Western",
      constituency_codes: ["216", "217", "218", "219", "220", "221", "222", "223", "224"]
    },
    %County{
      code: "040",
      name: "Busia",
      region: "Western",
      constituency_codes: ["225", "226", "227", "228", "229", "230", "231"]
    },
    %County{
      code: "041",
      name: "Siaya",
      region: "Nyanza",
      constituency_codes: ["232", "233", "234", "235", "236", "237"]
    },
    %County{
      code: "042",
      name: "Kisumu",
      region: "Nyanza",
      constituency_codes: ["238", "239", "240", "241", "242", "243", "244"]
    },
    %County{
      code: "043",
      name: "Homa Bay",
      region: "Nyanza",
      constituency_codes: ["245", "246", "247", "248", "249", "250", "251", "252"]
    },
    %County{
      code: "044",
      name: "Migori",
      region: "Nyanza",
      constituency_codes: ["253", "254", "255", "256", "257", "258", "259", "260"]
    },
    %County{
      code: "045",
      name: "Kisii",
      region: "Nyanza",
      constituency_codes: ["261", "262", "263", "264", "265", "266", "267", "268", "269"]
    },
    %County{
      code: "046",
      name: "Nyamira",
      region: "Nyanza",
      constituency_codes: ["270", "271", "272", "273"]
    },
    %County{
      code: "047",
      name: "Nairobi",
      region: "Nairobi",
      constituency_codes: [
        "274",
        "275",
        "276",
        "277",
        "278",
        "279",
        "280",
        "281",
        "282",
        "283",
        "284",
        "285",
        "286",
        "287",
        "288",
        "289",
        "290"
      ]
    }
  ]

  @doc """
  Returns all counties data.
  """
  def all, do: @counties

  @doc """
  Gets a county by county code.
  """
  def get(identifier) when is_binary(identifier) do
    Utils.get(@counties, identifier)
  end

  def get(identifier) when is_integer(identifier) do
    padded_code = String.pad_leading(to_string(identifier), 3, "0")
    get(padded_code)
  end

  @doc """
  Returns all counties grouped by region.

  ## Examples

      iex> counties_by_region = Kenya.Data.Counties.counties_by_region()
      iex> Map.keys(counties_by_region)
      ["Coast", "North Eastern", "Eastern", "Central", "Rift Valley", "Western", "Nyanza", "Nairobi"]

  """
  def counties_by_region do
    @counties
    |> Enum.group_by(& &1.region)
  end

  @doc """
  Returns counties in a specific region.

  ## Examples

      iex> coast_counties = Kenya.Data.Counties.counties_in_region("Coast")
      iex> length(coast_counties)
      6

  """
  def counties_in_region(region) when is_binary(region) do
    Enum.filter(@counties, &(&1.region == region))
  end

  @doc """
  Filters counties based on given criteria.

  ## Examples

      iex> coast_counties = Kenya.Data.Counties.filter_by(%{region: "Coast"})
      iex> length(coast_counties)
      6

  """
  def filter_by(criteria) when is_map(criteria) do
    Enum.filter(@counties, fn county ->
      Enum.all?(criteria, fn {key, value} ->
        Map.get(county, key) == value
      end)
    end)
  end

  @doc """
  Returns all unique regions.

  ## Examples

      iex> regions = Kenya.Data.Counties.list_regions()
      iex> "Coast" in regions
      true

  """
  def list_regions do
    @counties
    |> Enum.map(& &1.region)
    |> Enum.uniq()
    |> Enum.sort()
  end
end
