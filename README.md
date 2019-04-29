# GenderPrediction

**TODO: Add description**

Function to Predicts brazilian gender from name 
based in stats from IBGE
 `Params: name`
 `Returns: :male, :female, :undefined`

 Eg: ```
  GenderPrediction.get_gender_name(Paulo Marques) # Returns :male
 ```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `gender_prediction` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gender_prediction, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/gender_prediction](https://hexdocs.pm/gender_prediction).

