defmodule GenderPrediction do
  @moduledoc """
  Documentation for GenderPrediction.
  """

 alias Helpers.Naming
 alias Utils.Stats

 @doc """
 Function to get brasilian gender name
 based in stats from IBGE
 `Params: name`
 `Returns: :male, :female, :undefined`

 Eg: ```
  GenderPrediction.get_gender_name(Paulo Marques) # Returns :male
 ```
 """
 def get_gender_name(name) do
  name
  |> Naming.get_first_name()
  |> Stats.get_last_frequency_names()
  |> case do
    {m, f} when m != :error or f != :error ->
      if frequency_reducer(m) > frequency_reducer(f), do: :male, else: :female
    {m, f} when m == :error or f == :error -> :undefined
  end
 end

 defp frequency_reducer(map) do
  Enum.reduce_while(map, 0, fn e, _acc -> {:cont, Enum.at(e["res"], -1) |> Map.fetch!("frequencia")}  end)
 end
end
