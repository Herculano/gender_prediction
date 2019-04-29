defmodule Helpers.Naming do

  def get_first_name(name) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
