defmodule Kenya.Data.Utils do
  @moduledoc """
  Utility functions for working with Kenyan data.
  """

  @doc """
  Retrieves a division by its code or name.
  """

  def get(division_type, identifier) when is_binary(identifier) do
    # Try code first (faster lookup, more specific)
    case Enum.find(division_type, &(&1.code == identifier)) do
      nil ->
        # Fall back to name lookup (case insensitive)
        normalized_name = normalize_division_name(identifier)
        Enum.find(division_type, &(normalize_division_name(&1.name) == normalized_name))

      division_type ->
        division_type
    end
  end

  defp normalize_division_name(name) when is_binary(name) do
    String.downcase(name)
  end
end
