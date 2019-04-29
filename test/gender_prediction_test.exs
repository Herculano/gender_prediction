defmodule GenderPredictionTest do
  use ExUnit.Case
  doctest GenderPrediction

  test "greets the world" do
    assert GenderPrediction.hello() == :world
  end
end
