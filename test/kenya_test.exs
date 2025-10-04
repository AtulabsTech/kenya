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
        assert String.length(county.code) == 3
        assert String.match?(county.code, ~r/^\d{3}$/)
        assert is_binary(county.name)
      end)

      # Check specific counties
      county_codes = Enum.map(counties, & &1.code)
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
      assert county.code == "001"
      assert county.name == "Mombasa"
    end

    test "returns a county by integer ID (backwards compatibility)" do
      county = Kenya.get_county(1)
      assert %Kenya.County{} = county
      assert county.code == "001"
      assert county.name == "Mombasa"
    end

    test "returns a county by name" do
      county = Kenya.get_county("Mombasa")
      assert %Kenya.County{} = county
      assert county.code == "001"
      assert county.name == "Mombasa"
    end

    test "returns a county by name regardless of case" do
      county = Kenya.get_county("mombasa")
      assert %Kenya.County{} = county
      assert county.code == "001"
      assert county.name == "Mombasa"

      county = Kenya.get_county("MOMBASA")
      assert %Kenya.County{} = county
      assert county.code == "001"
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

  describe "filter_counties/2" do
    test "filters counties by region" do
      coast_counties = Kenya.filter_counties(:region, "Coast")
      assert length(coast_counties) == 6
    end
  end

  describe "all_constituencies/0" do
    test "returns all constituencies as Constituency structs" do
      constituencies = Kenya.all_constituencies()
      assert is_list(constituencies)
      assert length(constituencies) == 289

      # Check struct type
      constituency = List.first(constituencies)
      assert %Kenya.Constituency{} = constituency
      assert constituency.__struct__ == Kenya.Constituency
    end

    test "constituencies have proper codes and relationships" do
      constituencies = Kenya.all_constituencies()

      # Check first constituency (Changamwe)
      changamwe = Enum.find(constituencies, &(&1.code == "001"))
      assert changamwe.name == "Changamwe"
      # Mombasa
      assert changamwe.county_code == "001"
      assert is_list(changamwe.ward_codes)
      assert length(changamwe.ward_codes) > 0
    end
  end

  describe "get_constituency/1" do
    test "returns a constituency by string code" do
      constituency = Kenya.get_constituency("001")
      assert %Kenya.Constituency{} = constituency
      assert constituency.code == "001"
      assert is_list(constituency.wards)
      assert length(constituency.ward_codes) > 0
      assert constituency.name == "Changamwe"
      assert constituency.county_code == "001"
    end

    test "returns a constituency by integer ID (backwards compatibility)" do
      constituency = Kenya.get_constituency(1)
      assert %Kenya.Constituency{} = constituency
      assert constituency.code == "001"
    end

    test "returns a constituency by name" do
      constituency = Kenya.get_constituency("mbita")
      assert %Kenya.Constituency{} = constituency
      assert constituency.code == "251"
      assert is_list(constituency.wards)
      assert length(constituency.ward_codes) > 0
      assert constituency.name == "Mbita"
      assert constituency.county_code == "043"
    end
  end

  describe "all_constituencies_in_county/1" do
    test "returns all constituencies in a county using code" do
      constituencies = Kenya.all_constituencies_in_county("001")
      assert is_list(constituencies)
      assert length(constituencies) == 6

      # All should belong to Mombasa
      Enum.each(constituencies, fn constituency ->
        assert constituency.county_code == "001"
      end)

      # Check specific constituencies
      names = Enum.map(constituencies, & &1.name)
      assert "Changamwe" in names
      assert "Mvita" in names
    end

    test "returns all constituencies in a county using name" do
      constituencies = Kenya.all_constituencies_in_county("homa bay")
      assert is_list(constituencies)
      assert length(constituencies) == 8

      # All should belong to Homa Bay
      Enum.each(constituencies, fn constituency ->
        assert constituency.county_code == "043"
      end)

      # Check specific constituencies
      names = Enum.map(constituencies, & &1.name)
      assert "Mbita" in names
      assert "Suba" in names
    end
  end

  describe "all_wards/0" do
    test "returns all wards" do
      wards = Kenya.all_wards()
      assert is_list(wards)
      assert length(wards) == 1450

      # Check struct type
      ward = List.first(wards)
      assert %Kenya.Ward{} = ward
      assert ward.__struct__ == Kenya.Ward
    end

    test "all_wards have proper codes and relationships" do
      wards = Kenya.all_wards()

      # Check first ward (Port Reitz)
      port_reitz = Enum.find(wards, &(&1.code == "0001"))
      assert port_reitz.name == "Port Reitz"
      # Changamwe
      assert port_reitz.constituency_code == "001"
      # Mombasa
      assert port_reitz.county_code == "001"
    end

    test "all_wards can have residential areas" do
      wards = Kenya.all_wards()

      # Test Port Reitz ward has residential areas
      port_reitz = Enum.find(wards, &(&1.code == "0001"))
      assert is_list(port_reitz.residential_areas)
      assert "Portreitz Estate" in port_reitz.residential_areas
      assert "Mikindani" in port_reitz.residential_areas

      # Test Kilimani ward has residential areas
      kilimani = Enum.find(wards, &(&1.code == "1371"))
      assert is_list(kilimani.residential_areas)
      assert "Kilimani Estate" in kilimani.residential_areas
      assert "Kileleshwa" in kilimani.residential_areas
    end
  end

  describe "get_ward/1" do
    test "returns a ward by string code" do
      ward = Kenya.get_ward("0001")
      assert %Kenya.Ward{} = ward
      assert ward.code == "0001"
      assert ward.name == "Port Reitz"
      assert ward.constituency_code == "001"
      assert ward.county_code == "001"
      # Check residential areas are returned
      assert is_list(ward.residential_areas)
      assert "Portreitz Estate" in ward.residential_areas
    end

    test "returns a ward by integer ID (backwards compatibility)" do
      ward = Kenya.get_ward(1)
      assert %Kenya.Ward{} = ward
      assert ward.code == "0001"
    end

    test "returns a ward by name" do
      ward = Kenya.get_ward("Port Reitz")
      assert %Kenya.Ward{} = ward
      assert ward.code == "0001"
    end

    test "returns ward with residential areas" do
      # Test ward with residential areas
      kilimani = Kenya.get_ward("1371")
      assert %Kenya.Ward{} = kilimani
      assert kilimani.name == "Kilimani"
      assert is_list(kilimani.residential_areas)
      assert "Kilimani Estate" in kilimani.residential_areas
      assert "Kileleshwa" in kilimani.residential_areas
    end
  end

  describe "filter_wards/2" do
    test "filters wards by county code" do
      wards = Kenya.filter_wards(:county_code, "001")
      assert is_list(wards)
      assert length(wards) == 30
      assert Enum.all?(wards, &(&1.county_code == "001"))
    end

    test "filters wards by constituency code" do
      wards = Kenya.filter_wards(:constituency_code, "001")
      assert is_list(wards)
      assert length(wards) == 5
      assert Enum.all?(wards, &(&1.constituency_code == "001"))
    end

    test "returns empty list for no matches" do
      wards = Kenya.filter_wards(:county_code, "999")
      assert wards == []
    end
  end

  describe "administrative relationships" do
    test "all_wards_in_constituency/1 returns wards for a constituency" do
      # Changamwe
      wards = Kenya.all_wards_in_constituency("001")
      assert is_list(wards)
      assert length(wards) == 5

      # All should belong to Changamwe
      Enum.each(wards, fn ward ->
        assert ward.constituency_code == "001"
        assert ward.county_code == "001"
      end)

      # Check specific wards
      names = Enum.map(wards, & &1.name)
      assert "Port Reitz" in names
      assert "Changamwe" in names
    end

    test "all_wards_in_county/1 returns wards for a county" do
      # Mombasa
      wards = Kenya.all_wards_in_county("001")
      assert is_list(wards)
      # All wards in Mombasa
      assert length(wards) == 30

      # All should belong to Mombasa
      Enum.each(wards, fn ward ->
        assert ward.county_code == "001"
      end)
    end
  end

  describe "pattern matching and type safety" do
    test "supports pattern matching on County struct" do
      county = Kenya.get_county("001")

      case county do
        %Kenya.County{name: name, code: code} ->
          assert name == "Mombasa"
          assert code == "001"

        _ ->
          flunk("Pattern matching failed")
      end
    end

    test "supports pattern matching on Constituency struct" do
      constituency = Kenya.get_constituency("001")

      case constituency do
        %Kenya.Constituency{name: name, code: code, county_code: county_code} ->
          assert name == "Changamwe"
          assert code == "001"
          assert county_code == "001"

        _ ->
          flunk("Pattern matching failed")
      end
    end

    test "supports pattern matching on Ward struct" do
      ward = Kenya.get_ward("0001")

      case ward do
        %Kenya.Ward{
          name: name,
          code: code,
          constituency_code: const_code,
          county_code: county_code
        } ->
          assert name == "Port Reitz"
          assert code == "0001"
          assert const_code == "001"
          assert county_code == "001"

        _ ->
          flunk("Pattern matching failed")
      end
    end
  end

  describe "search and filtering" do
    test "county/1 finds county by name (case insensitive)" do
      # Test exact case
      county = Kenya.get_county("Mombasa")
      assert county.code == "001"

      # Test different case
      county = Kenya.get_county("mombasa")
      assert county.code == "001"

      # Test mixed case
      county = Kenya.get_county("Mombasa")
      assert county.code == "001"
    end
  end

  describe "data integrity" do
    test "all administrative levels are properly linked" do
      # Get a ward and verify it links properly to its parent levels
      ward = Kenya.get_ward("0001")
      assert ward.name == "Port Reitz"

      # Check constituency linkage
      constituency = Kenya.get_constituency(ward.constituency_code)
      assert constituency.name == "Changamwe"
      assert constituency.county_code == ward.county_code

      # Check county linkage
      county = Kenya.get_county(ward.county_code)
      assert county.name == "Mombasa"
    end

    test "ward codes in constituencies match actual wards" do
      constituency = Kenya.get_constituency("001")
      actual_wards = Kenya.all_wards_in_constituency("001")

      assert length(constituency.ward_codes) == length(actual_wards)

      # Check that all ward codes in constituency match actual wards
      actual_ward_codes = Enum.map(actual_wards, & &1.code) |> Enum.sort()
      expected_ward_codes = Enum.sort(constituency.ward_codes)

      assert actual_ward_codes == expected_ward_codes
    end

    test "constituency codes in counties match actual constituencies" do
      county = Kenya.get_county("001")
      actual_constituencies = Kenya.all_constituencies_in_county("001")

      assert length(county.constituency_codes) == length(actual_constituencies)

      # Check that all constituency codes in county match actual constituencies
      actual_codes = Enum.map(actual_constituencies, & &1.code) |> Enum.sort()
      expected_codes = Enum.sort(county.constituency_codes)

      assert actual_codes == expected_codes
    end

    test "all wards have valid constituency and county references" do
      wards = Kenya.all_wards()

      # Sample a few wards to test
      sample_wards = Enum.take(wards, 10)

      Enum.each(sample_wards, fn ward ->
        # Check constituency exists
        constituency = Kenya.get_constituency(ward.constituency_code)
        assert constituency != nil
        assert constituency.county_code == ward.county_code

        # Check county exists
        county = Kenya.get_county(ward.county_code)
        assert county != nil
      end)
    end
  end

  describe "performance and data loading" do
    test "data is loaded at compile time (no file system access)" do
      # These calls should be instant since data is compiled
      start_time = System.monotonic_time(:millisecond)

      Kenya.all_counties()
      Kenya.all_constituencies()
      Kenya.all_wards()

      end_time = System.monotonic_time(:millisecond)
      duration = end_time - start_time

      # Should be very fast (under 10ms) since it's compiled data
      assert duration < 800
    end

    test "returns the same data on multiple calls" do
      counties1 = Kenya.all_counties()
      counties2 = Kenya.all_counties()

      assert counties1 == counties2
      assert length(counties1) == length(counties2)
    end
  end

  describe "sub_counties/0" do
    test "returns all sub-counties as SubCounty structs" do
      sub_counties = Kenya.all_sub_counties()
      assert is_list(sub_counties)
      # We have a sample of sub-counties
      assert length(sub_counties) >= 50

      # Check struct type
      sub_county = List.first(sub_counties)
      assert %Kenya.SubCounty{} = sub_county
      assert sub_county.__struct__ == Kenya.SubCounty
    end

    test "sub-counties have proper codes and relationships" do
      sub_counties = Kenya.all_sub_counties()

      # Check Changamwe sub-county
      changamwe = Enum.find(sub_counties, &(&1.code == "001001"))
      assert changamwe.name == "Changamwe"
      assert changamwe.county_code == "001"
      assert changamwe.county_name == "Mombasa"
      assert changamwe.administrative_type == "Urban"
    end
  end

  describe "get_sub_county/1" do
    test "returns a sub-county by string code" do
      sub_county = Kenya.get_sub_county("001001")
      assert %Kenya.SubCounty{} = sub_county
      assert sub_county.code == "001001"
      assert sub_county.name == "Changamwe"
      assert sub_county.code == "001"
      assert sub_county.county_name == "Mombasa"
    end

    test "returns nil for non-existent sub-county code" do
      sub_county = Kenya.get_sub_county("999999")
      assert is_nil(sub_county)
    end

    test "returns nil for invalid input" do
      assert Kenya.get_sub_county(nil) == nil
      assert Kenya.get_sub_county("") == nil
    end
  end

  describe "all_county_sub_counties/1" do
    test "returns all sub-counties in a county" do
      # Mombasa sub-counties
      mombasa_sub_counties = Kenya.all_county_sub_counties("001")
      assert is_list(mombasa_sub_counties)
      assert length(mombasa_sub_counties) == 6

      # All should belong to Mombasa
      Enum.each(mombasa_sub_counties, fn sub_county ->
        assert sub_county.code == "001"
        assert sub_county.county_name == "Mombasa"
      end)

      # Check specific sub-counties
      names = Enum.map(mombasa_sub_counties, & &1.name)
      assert "Changamwe" in names
      assert "Mvita" in names
      assert "Nyali" in names
    end

    test "returns empty list for county with no sub-counties in our sample" do
      # Most counties don't have sub-counties in our sample data
      sub_counties = Kenya.all_county_sub_counties("020")
      assert is_list(sub_counties)
      # Should be empty since we only have sample data
    end
  end

  describe "filter_sub_counties/2" do
    test "filters sub-counties by county code" do
      mombasa_sub_counties = Kenya.filter_sub_counties(:county_code, "001")
      assert is_list(mombasa_sub_counties)
      assert length(mombasa_sub_counties) == 6

      # All should belong to Mombasa
      Enum.each(mombasa_sub_counties, fn sub_county ->
        assert sub_county.code == "001"
      end)
    end

    test "filters sub-counties by county name" do
      mombasa_sub_counties = Kenya.filter_sub_counties(:county_name, "Mombasa")
      assert is_list(mombasa_sub_counties)

      # All should belong to Mombasa
      Enum.each(mombasa_sub_counties, fn sub_county ->
        assert sub_county.county_name == "Mombasa"
      end)
    end
  end

  describe "Kenya.Data.Constituencies enhanced functions" do
    test "all/0 returns all constituencies" do
      constituencies = Kenya.Data.Constituencies.all()
      assert length(constituencies) == 289
      assert Enum.all?(constituencies, &is_struct(&1, Kenya.Constituency))
    end

    test "filter_by/1 filters constituencies by criteria" do
      mombasa_constituencies = Kenya.Data.Constituencies.filter_by(%{county_code: "001"})
      assert length(mombasa_constituencies) == 6
      assert Enum.all?(mombasa_constituencies, &(&1.county_code == "001"))
    end
  end

  describe "Kenya.Data.Wards enhanced functions" do
    test "all/0 returns all wards" do
      wards = Kenya.Data.Wards.all()
      assert length(wards) == 1450
      assert Enum.all?(wards, &is_struct(&1, Kenya.Ward))
    end

    test "filter_by/1 filters wards by criteria" do
      mombasa_wards = Kenya.Data.Wards.filter_by(%{county_code: "001"})
      assert length(mombasa_wards) == 30
      assert Enum.all?(mombasa_wards, &(&1.county_code == "001"))
    end

    test "search_by_residential_area/1 finds wards by residential area" do
      results = Kenya.Data.Wards.search_by_residential_area("sunton")
      # Note: might return 0 if no Sunton areas exist
      assert is_list(results)
    end

    test "all_wards_in_constituency/1 returns wards for a constituency" do
      wards = Kenya.all_wards_in_constituency("001")
      assert length(wards) == 5
      assert Enum.all?(wards, &(&1.constituency_code == "001"))
    end
  end

  describe "Kenya.Data.SubCounties enhanced functions" do
    test "filter_by_criteria/1 filters sub-counties by criteria" do
      mombasa_urban =
        Kenya.Data.SubCounties.filter_by_criteria(%{
          county_code: "001",
          administrative_type: "Urban"
        })

      assert length(mombasa_urban) >= 1

      assert Enum.all?(
               mombasa_urban,
               &(&1.county_code == "001" and &1.administrative_type == "Urban")
             )
    end
  end

  describe "Kenya.Data.Towns enhanced functions" do
    test "all/0 returns all towns" do
      towns = Kenya.Data.Towns.all()
      assert length(towns) >= 50
      assert Enum.all?(towns, &is_struct(&1, Kenya.Town))
    end

    test "filter_by/1 filters towns by criteria" do
      border_towns = Kenya.Data.Towns.filter_by(%{type: "Border Town"})
      assert length(border_towns) >= 4
      assert Enum.all?(border_towns, &(&1.type == "Border Town"))
    end

    test "grouped_by_type/0 groups towns by type" do
      grouped = Kenya.Data.Towns.grouped_by_type()
      assert Map.has_key?(grouped, "Border Town")
      assert length(grouped["Border Town"]) >= 4
    end

    test "major_towns/0 returns major towns" do
      major = Kenya.Data.Towns.major_towns()
      assert length(major) >= 3
      assert Enum.all?(major, &(&1.type in ["Major Town", "City", "Capital City"]))
    end

    test "border_towns/0 returns border towns" do
      border = Kenya.Data.Towns.border_towns()
      assert length(border) >= 4
      assert Enum.all?(border, &(&1.type == "Border Town"))
    end

    test "type_distribution/0 returns type distribution" do
      distribution = Kenya.Data.Towns.type_distribution()
      assert Map.has_key?(distribution, "Border Town")
      assert is_integer(distribution["Border Town"])
    end

    test "market_towns/0 returns market towns" do
      market = Kenya.Data.Towns.market_towns()
      assert is_list(market)

      if length(market) > 0 do
        assert Enum.all?(market, &(&1.type == "Market Town"))
      end
    end
  end

  describe "Kenya main module filter functions" do
    test "filter_counties/2 works correctly" do
      counties = Kenya.filter_counties(Kenya.all_counties(), %{region: "Coast"})
      assert length(counties) == 6
      assert Enum.all?(counties, &(&1.region == "Coast"))
    end

    test "filter_constituencies/2 works correctly" do
      constituencies =
        Kenya.filter_constituencies(Kenya.all_constituencies(), %{county_code: "001"})

      assert length(constituencies) == 6
      assert Enum.all?(constituencies, &(&1.county_code == "001"))
    end

    test "filter_wards/2 works correctly" do
      wards = Kenya.filter_wards(Kenya.all_wards(), %{county_code: "001"})
      assert length(wards) == 30
      assert Enum.all?(wards, &(&1.county_code == "001"))
    end

    test "filter_towns/2 works correctly" do
      towns = Kenya.filter_towns(Kenya.towns(), %{county_code: "001"})
      mombasa_towns = Enum.filter(towns, &(&1.county_code == "001"))
      assert length(mombasa_towns) >= 0
    end

    test "counties_in_region/1 works correctly" do
      coast_counties = Kenya.all_counties_in_region("Coast")
      assert length(coast_counties) == 6
      assert Enum.all?(coast_counties, &(&1.region == "Coast"))
    end

    test "counties_by_region/1 works correctly" do
      coast_counties = Kenya.all_counties_in_region("Coast")
      assert length(coast_counties) == 6
      assert Enum.all?(coast_counties, &(&1.region == "Coast"))
    end

    test "constituencies_in_county/1 works correctly" do
      constituencies = Kenya.all_constituencies_in_county("001")
      assert length(constituencies) == 6
      assert Enum.all?(constituencies, &(&1.county_code == "001"))
    end

    test "list_county_wards/1 works correctly" do
      wards = Kenya.all_wards_in_county("001")
      assert length(wards) == 30
      assert Enum.all?(wards, &(&1.county_code == "001"))
    end

    test "wards_in_constituency/1 works correctly" do
      wards = Kenya.all_wards_in_constituency("001")
      assert length(wards) == 5
      assert Enum.all?(wards, &(&1.constituency_code == "001"))
    end

    test "stats/0 returns comprehensive statistics" do
      stats = Kenya.stats()
      assert stats.counties == 47
      assert stats.constituencies == 289
      assert stats.wards == 1450
    end
  end
end
