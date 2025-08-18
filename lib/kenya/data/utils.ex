defmodule Kenya.Data.Utils do
  @moduledoc """
  Utility functions for working with Kenyan data.
  """

  alias Kenya.{County, Constituency, SubCounty, Town, Ward}
  alias Kenya.Data.{Constituencies, Wards}

  @doc """
  Retrieves a division by its code or name.
  """

  def get(division_type, identifier) do
    division =
      case Enum.find(division_type, &(&1.code == identifier)) do
        nil ->
          normalized_name = normalize_division_name(identifier)
          Enum.find(division_type, &(normalize_division_name(&1.name) == normalized_name))

        division ->
          division
      end

    load_sub_divisions(division)
  end

  @spec load_sub_divisions(%{
          :__struct__ => Kenya.Constituency | Kenya.County | Kenya.Ward,
          optional(any()) => any()
        }) :: %{
          :__struct__ => Kenya.Constituency | Kenya.County | Kenya.Ward,
          optional(any()) => any()
        }
  @doc """
  Returns a division (county, constituency, sub-county, ward) with all its nested subdivisions and full data.

  For counties: includes constituencies, each with their wards.
  For constituencies: includes wards.
  For sub-counties: includes wards.
  For wards: returns full ward data only.
  """
  def load_sub_divisions(%County{} = division) do
    nested_constituencies =
      Enum.map(division.constituency_codes, fn code ->
        case Constituencies.constituency(code) do
          nil ->
            nil

          constituency ->
            wards =
              Enum.map(constituency.ward_codes, &Wards.get/1)
              |> Enum.reject(&is_nil/1)

            Map.put(constituency, :wards, wards)
        end
      end)
      |> Enum.reject(&is_nil/1)

    Map.put(division, :constituencies, nested_constituencies)
  end

  def load_sub_divisions(%Constituency{} = division) do
    nested_wards =
      Enum.map(division.ward_codes, &Wards.get/1)
      |> Enum.reject(&is_nil/1)

    Map.put(division, :wards, nested_wards)
  end

  def load_sub_divisions(%SubCounty{} = division) do
    division
    # nested_wards =
    #   Enum.map(division.ward_codes, &Wards.get/1)
    #   |> Enum.reject(&is_nil/1)

    # Map.put(division, :wards, nested_wards)
  end

  def load_sub_divisions(%Ward{} = division) do
    division
  end

  def load_sub_divisions(%Town{} = division) do
    division
  end

  def load_sub_divisions(nil), do: nil

  defp normalize_division_name(name) when is_binary(name) do
    String.downcase(name)
  end
end
