defmodule Kenya.Loader do
  @moduledoc false

  import Kenya.Utils, only: [to_map: 1, parse_date: 1, parse_coordinates: 1]
  alias Kenya.{County, SubCounty, Constituency, Ward, City}

  @doc """
  Load all counties from YAML files.
  """
  @spec load_counties() :: [County.t(), ...]
  def load_counties do
    data_path(["counties.yaml"])
    |> :yamerl.decode_file()
    |> List.first()
    |> Enum.map(&convert_county/1)
  end

  @doc """
  Load all sub-counties from YAML files.
  """
  def load_sub_counties do
    data_path(["sub_counties.yaml"])
    |> :yamerl.decode_file()
    |> List.first()
    |> Enum.map(&convert_sub_county/1)
  end

  @doc """
  Load all constituencies from YAML files.
  """
  def load_constituencies do
    data_path(["constituencies.yaml"])
    |> :yamerl.decode_file()
    |> List.first()
    |> Enum.map(&convert_constituency/1)
  end

  @doc """
  Load all wards from YAML files.
  """
  def load_wards do
    data_path(["wards.yaml"])
    |> :yamerl.decode_file()
    |> List.first()
    |> Enum.map(&convert_ward/1)
  end

  @doc """
  Load all cities from YAML files.
  """
  def load_cities do
    data_path(["cities.yaml"])
    |> :yamerl.decode_file()
    |> List.first()
    |> Enum.map(&convert_city/1)
  end

  defp data_path(path) do
    Path.join([:code.priv_dir(:kenya), "data"] ++ path)
    |> String.to_charlist()
  end

  defp convert_county(county_data) when is_list(county_data) do
    Enum.reduce(county_data, %County{}, fn {attribute, value}, county ->
      with attribute = List.to_atom(attribute) do
        Map.put(county, attribute, convert_county_value(attribute, value))
      end
    end)
  end

  defp convert_sub_county(sub_county_data) when is_list(sub_county_data) do
    Enum.reduce(sub_county_data, %SubCounty{}, fn {attribute, value}, sub_county ->
      with attribute = List.to_atom(attribute) do
        Map.put(sub_county, attribute, convert_sub_county_value(attribute, value))
      end
    end)
  end

  defp convert_constituency(constituency_data) when is_list(constituency_data) do
    Enum.reduce(constituency_data, %Constituency{}, fn {attribute, value}, constituency ->
      with attribute = List.to_atom(attribute) do
        Map.put(constituency, attribute, convert_constituency_value(attribute, value))
      end
    end)
  end

  defp convert_ward(ward_data) when is_list(ward_data) do
    Enum.reduce(ward_data, %Ward{}, fn {attribute, value}, ward ->
      with attribute = List.to_atom(attribute) do
        Map.put(ward, attribute, convert_ward_value(attribute, value))
      end
    end)
  end

  defp convert_city(city_data) when is_list(city_data) do
    Enum.reduce(city_data, %City{}, fn {attribute, value}, city ->
      with attribute = List.to_atom(attribute) do
        Map.put(city, attribute, convert_city_value(attribute, value))
      end
    end)
  end

  # County value converters
  defp convert_county_value(_, :null), do: nil
  defp convert_county_value(:created_date, value), do: parse_date(to_string(value))
  defp convert_county_value(:coordinates, value), do: parse_coordinates(to_map(value))

  defp convert_county_value(:postal_codes, value) when is_list(value),
    do: Enum.map(value, &to_string/1)

  defp convert_county_value(:calling_codes, value) when is_list(value),
    do: Enum.map(value, &to_string/1)

  defp convert_county_value(:area_km2, value) when is_number(value), do: value / 1
  defp convert_county_value(:population, value) when is_number(value), do: value
  defp convert_county_value(_, value) when is_number(value), do: value

  defp convert_county_value(_, value) when is_list(value) and not is_binary(value),
    do: to_string(value)

  defp convert_county_value(_, value), do: to_string(value)

  # Sub-county value converters
  defp convert_sub_county_value(_, :null), do: nil
  defp convert_sub_county_value(:coordinates, value), do: parse_coordinates(to_map(value))

  defp convert_sub_county_value(:postal_codes, value) when is_list(value),
    do: Enum.map(value, &to_string/1)

  defp convert_sub_county_value(:area_km2, value) when is_number(value), do: value / 1
  defp convert_sub_county_value(:population, value) when is_number(value), do: value
  defp convert_sub_county_value(_, value) when is_number(value), do: value

  defp convert_sub_county_value(_, value) when is_list(value) and not is_binary(value),
    do: to_string(value)

  defp convert_sub_county_value(_, value), do: to_string(value)

  # Constituency value converters
  defp convert_constituency_value(_, :null), do: nil
  defp convert_constituency_value(:created_date, value), do: parse_date(to_string(value))
  defp convert_constituency_value(:coordinates, value), do: parse_coordinates(to_map(value))
  defp convert_constituency_value(:last_election_results, value), do: to_map(value)
  defp convert_constituency_value(:area_km2, value) when is_number(value), do: value / 1
  defp convert_constituency_value(:population, value) when is_number(value), do: value
  defp convert_constituency_value(:registered_voters, value) when is_number(value), do: value
  defp convert_constituency_value(_, value) when is_number(value), do: value

  defp convert_constituency_value(_, value) when is_list(value) and not is_binary(value),
    do: to_string(value)

  defp convert_constituency_value(_, value), do: to_string(value)

  # Ward value converters
  defp convert_ward_value(_, :null), do: nil
  defp convert_ward_value(:coordinates, value), do: parse_coordinates(to_map(value))
  defp convert_ward_value(:area_km2, value) when is_number(value), do: value / 1
  defp convert_ward_value(:population, value) when is_number(value), do: value
  defp convert_ward_value(:registered_voters, value) when is_number(value), do: value
  defp convert_ward_value(_, value) when is_number(value), do: value

  defp convert_ward_value(_, value) when is_list(value) and not is_binary(value),
    do: to_string(value)

  defp convert_ward_value(_, value), do: to_string(value)

  # City value converters
  defp convert_city_value(_, :null), do: nil
  defp convert_city_value(:established_date, value), do: parse_date(to_string(value))
  defp convert_city_value(:coordinates, value), do: parse_coordinates(to_map(value))

  defp convert_city_value(:postal_codes, value) when is_list(value),
    do: Enum.map(value, &to_string/1)

  defp convert_city_value(:calling_codes, value) when is_list(value),
    do: Enum.map(value, &to_string/1)

  defp convert_city_value(:area_km2, value) when is_number(value), do: value / 1
  defp convert_city_value(:population, value) when is_number(value), do: value
  defp convert_city_value(:elevation, value) when is_number(value), do: value
  defp convert_city_value(_, value) when is_number(value), do: value

  defp convert_city_value(_, value) when is_list(value) and not is_binary(value),
    do: to_string(value)

  defp convert_city_value(_, value), do: to_string(value)
end
