# Kenya

[![Hex.pm](https://img.shields.io/hexpm/v/kenya.svg)](https://hex.pm/packages/kenya)
[![Documentation](https://img.shields.io/badge/docs-hexpm-blue.svg)](https://hexdocs.pm/kenya/)

A comprehensive Elixir library providing access to all Kenyan administrative divisions including counties, sub-counties, constituencies, wards, and cities/towns/residentials with their geographical and administrative information.

## Features

- **Counties**: All 47 counties with capitals, areas, populations, and administrative details
- **Sub-Counties**: Administrative subdivisions within counties
- **Constituencies**: Electoral constituencies with relationships
- **Wards**: The smallest electoral units with administrative information
- **Towns/Residentials**: Urban centers with municipal information
- **Fast lookups**: Data loaded at compile time for optimal performance
- **Comprehensive filtering**: Filter by any attribute
- **Relationships**: Easy navigation between administrative levels

## Installation

Add `kenya` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:kenya, "~> 0.1.0"}
  ]
end
```

## Usage

### Basic Data Access

All administrative divisions use proper Kenyan coding standards:

- **Counties**: "001" to "047" (47 counties)
- **Constituencies**: "001" to "289" (289 constituencies)
- **Wards**: "0001" to "1450" (1,450 wards)

```elixir
# Get all administrative divisions
counties = Kenya.all_counties()        # 47 counties
constituencies = Kenya.all_constituencies() # 289 constituencies
wards = Kenya.wards()             # 1,450 wards

# Access by official Kenyan codes
mombasa = Kenya.get_county("001")     # Mombasa County
nairobi = Kenya.get_county("047")     # Nairobi County
changamwe = Kenya.constituency("001") # Changamwe Constituency
port_reitz = Kenya.ward("0001")   # Port Reitz Ward

# Access by names
mombasa = Kenya.get_county("Mombasa")

# Backwards compatibility with integer IDs
mombasa = Kenya.get_county(1)         # Also works with old integer IDs
```

### Flexible Data Loading

The library provides three levels of data access depending on your needs:

#### 1. Gets a Complete Hierarchy (Fully Nested)

Returns administrative data for a county with related sub divisions as lists for efficient storage:

```elixir
county = Kenya.get_county("001")
# Returns:
# %{
#   code: "001",
#   name: "Mombasa",
#   __struct__: Kenya.County,
#   constituency_codes: ["001", "002", "003", "004", "005", "006"],
#   ward_codes: nil,
#   constituencies: [
#     %{
#       code: "001",
#       name: "Changamwe",
#       __struct__: Kenya.Constituency,
#       wards: [
#         %Kenya.Ward{
#           code: "0001",
#           name: "Port Reitz",
#           constituency_code: "001",
#           constituency_name: nil,
#           county_code: "001",
#           county_name: nil,
#           area_km2: nil,
#           # ... all wards in constituency
#       ]
#     # ... all constituencies in county
#   ]
# }
```

### Administrative Relationships

Navigate between administrative levels easily:

```elixir
# Find all constituencies in a county
mombasa_constituencies = Kenya.all_constituencies_in_county("001")

# Find all wards in a constituency
changamwe_wards = Kenya.wards_in_constituency("001")

# Find all wards in a county
mombasa_wards = Kenya.list_county_wards("001")

# Access parent administrative divisions
ward = Kenya.ward("0001")
ward.constituency_code # "001" (Changamwe)
ward.county_code      # "001" (Mombasa)
```

### Hierarchical Selection and Residential Areas

The library supports detailed hierarchical selection down to residential areas within wards. Perfect for applications like real estate management, ISP billing systems, or any location-based services.

#### Example: Selecting Sunton Area

```elixir
# Hierarchical path: Nairobi County → Kasarani Constituency → Clay City Ward → Sunton Area

# Method 1: Direct ward lookup and check residential areas
ward = Kenya.ward("1396")  # Clay City Ward
# Returns: %Kenya.Ward{name: "CLAYCITY", residential_areas: ["Clay City", "Sunton", "Hunters"], ...}

# Check if Sunton is available in this ward
"Sunton" in ward.residential_areas  # Returns: true

# Method 2: Complete hierarchical selection
county = Kenya.get_county("047")        # Nairobi County
constituency = Kenya.constituency("280")  # Kasarani Constituency
ward = Kenya.ward("1396")          # Clay City Ward
residential_areas = ward.residential_areas  # ["Clay City", "Sunton", "Hunters"]

# Method 3: Search for residential area across constituencies
kasarani_wards = Kenya.wards_in_constituency("280")
sunton_ward = Enum.find(kasarani_wards, fn ward ->
  "Sunton" in (ward.residential_areas || [])
end)
```

#### Finding Any Residential Area

Create a helper function to locate any residential area:

```elixir
def find_residential_area_location(area_name) do
  all_wards = Kenya.wards()

  case Enum.find(all_wards, fn ward ->
    area_name in (ward.residential_areas || [])
  end) do
    nil -> {:error, "Area not found"}
    ward ->
      constituency = Kenya.constituency(ward.constituency_code)
      county = Kenya.get_county(ward.county_code)

      {:ok, %{
        area: area_name,
        ward: %{code: ward.ward_code, name: ward.name},
        constituency: %{code: constituency.constituency_code, name: constituency.name},
        county: %{code: county.county_code, name: county.name}
      }}
  end
end

# Usage:
find_residential_area_location("Sunton")
# Returns:
# {:ok, %{
#   area: "Sunton",
#   ward: %{code: "1396", name: "CLAYCITY"},
#   constituency: %{code: "280", name: "KASARANI"},
#   county: %{code: "047", name: "NAIROBI"}
# }}
```

#### Use Cases

This hierarchical selection is ideal for:

- **Real Estate Management**: Property location selection from county down to specific residential areas
- **ISP Billing Systems**: Service area definition and customer location management
- **Delivery Services**: Precise location targeting for logistics
- **Government Services**: Administrative service delivery mapping
- **Emergency Services**: Rapid location identification and response coordination

### Performance Considerations

- **Basic access**: Fastest, returns codes only
- **With details**: Moderate performance, resolves specific relationships
- **Complete hierarchy**: Most comprehensive, suitable for full administrative views
- **Compile-time loading**: All data loaded at compile time for optimal runtime performance

## Documentation

Full documentation is available at [https://hexdocs.pm/kenya](https://hexdocs.pm/kenya).

## Data Sources

This library contains data compiled from official Kenyan government sources and public records.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
