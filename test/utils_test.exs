defmodule Kenya.Data.UtilsTest do
  use ExUnit.Case

  alias Kenya.Data.Utils
  alias Kenya.Data.{Counties, Constituencies, Wards}

  describe "get/1 (for counties)" do
    test "returns county with nested constituencies and wards" do
      county = Utils.get(Counties.all(), "001")
      assert county.code == "001"
      assert is_list(county.constituencies)
      assert Enum.all?(county.constituencies, &is_map(&1))
      assert Enum.all?(county.constituencies, fn c -> is_list(c.wards) end)
    end

    test "returns constituency with nested wards" do
      constituency = Utils.get(Constituencies.all(), "001")
      assert constituency.code == "001"
      assert is_list(constituency.wards)
      assert Enum.all?(constituency.wards, &is_map(&1))
    end

    test "returns ward data for a ward code" do
      ward = Utils.get(Wards.all(), "0001")
      assert ward.code == "0001"
      assert ward.name != nil
    end

    test "returns nil for invalid code" do
      assert Utils.get(Counties.all(), "999") == nil
      assert Utils.get(Constituencies.all(), "999") == nil
      assert Utils.get(Wards.all(), "9999") == nil
    end
  end

  describe "load_sub_divisions/1" do
    test "loads sub-divisions for a county" do
      county = Utils.get(Counties.all(), "001")
      loaded = Utils.load_sub_divisions(county)
      assert Map.has_key?(loaded, :constituencies)
    end

    test "loads sub-divisions for a constituency" do
      constituency = Utils.get(Constituencies.all(), "001")
      loaded = Utils.load_sub_divisions(constituency)
      assert Map.has_key?(loaded, :wards)
    end

    test "loads wards" do
      ward = Utils.get(Wards.all(), "0001")
      loaded = Utils.load_sub_divisions(ward)
      assert loaded == ward
    end

    test "returns nil for invalid division" do
      assert Utils.load_sub_divisions(nil) == nil
    end
  end
end
