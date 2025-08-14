defmodule KenyaTest do
  use ExUnit.Case, async: true
  doctest Kenya

  describe "all_counties/0" do
    test "returns all counties as County structs" do
      counties = Kenya.all_counties()
      assert is_list(counties)
      assert length(counties) == 47

      # Check struct type
      county = List.first(counties)
      assert %Kenya.County{} = county
      assert county.__struct__ == Kenya.County
    end

    test "counties have proper Kenyan codes" do
      counties = Kenya.all_counties()

      # Check that all counties have proper 3-digit codes
      Enum.each(counties, fn county ->
        assert String.length(county.county_code) == 3
        assert String.match?(county.county_code, ~r/^\d{3}$/)
        assert is_binary(county.name)
      end)

      # Check specific counties
      county_codes = Enum.map(counties, & &1.county_code)
      # Mombasa
      assert "001" in county_codes
      # Nairobi
      assert "047" in county_codes
    end
  end

  describe "get_county/1" do
    test "returns a county by string code" do
      county = Kenya.get_county("001")
      assert %Kenya.County{} = county
      assert county.county_code == "001"
      assert county.name == "Mombasa"
    end

    test "returns a county by integer ID (backwards compatibility)" do
      county = Kenya.get_county(1)
      assert %Kenya.County{} = county
      assert county.county_code == "001"
      assert county.name == "Mombasa"
    end

    test "returns a county by name" do
      county = Kenya.get_county("Mombasa")
      assert %Kenya.County{} = county
      assert county.county_code == "001"
      assert county.name == "Mombasa"
    end

    test "returns a county by name regardless of case" do
      county = Kenya.get_county("mombasa")
      assert %Kenya.County{} = county
      assert county.county_code == "001"
      assert county.name == "Mombasa"

      county = Kenya.get_county("MOMBASA")
      assert %Kenya.County{} = county
      assert county.county_code == "001"
      assert county.name == "Mombasa"
    end

    test "returns nil for non-existent county code" do
      county = Kenya.get_county("999")
      assert is_nil(county)
    end

    test "returns nil for invalid input" do
      assert Kenya.get_county(nil) == nil
      assert Kenya.get_county("") == nil
    end
  end

  describe("get_county_by/2") do
    test "returns a county by name" do
      county = Kenya.get_county_by(:name, "Mombasa")
      assert county.county_code == "001"
    end

    test "returns a county by code" do
      county = Kenya.get_county_by(:county_code, "001")
      assert county.name == "Mombasa"
    end

    test "returns nil for non-existent county" do
      county = Kenya.get_county_by(:name, "NonExistent")
      assert is_nil(county)
    end
  end
  describe "flexible data loading" do
    test "county_hierarchy/1 returns complete nested structure" do
      hierarchy = Kenya.county_hierarchy("001")

      assert hierarchy.name == "Mombasa"
      assert is_list(hierarchy.constituencies)
      assert length(hierarchy.constituencies) == 6

      # Check that constituencies have their wards
      constituency = List.first(hierarchy.constituencies)
      assert %Kenya.Constituency{} = constituency
      assert is_list(constituency.wards)
      assert length(constituency.wards) > 0

      # Check that wards are full structs
      ward = List.first(constituency.wards)
      assert %Kenya.Ward{} = ward
    end
  end
  describe "Kenya main module filter functions" do
    test "filter_counties/2 works correctly" do
      counties = Kenya.filter_counties(Kenya.all_counties(), %{region: "Coast"})
      assert length(counties) == 6
      assert Enum.all?(counties, &(&1.region == "Coast"))
    end
  end
end
