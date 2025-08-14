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
  end
end
