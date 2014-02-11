# DrinkJson

Simple JSON encoding module for Elixir lists

**DrinkJson.encode** sample usage:

```elixir
my_list = [
	 field_1: "some value",
	 field_2: 2
] 

DrinkJson.encode my_list
#returns {"field_1": "some value", "field_2": "2"}
```
**Use with Dynamo**

In your mix.exs add this line ```{ :drink_json,   github: "evan108108/Drink-JSON", tag: "v0.0.1" }``` to your dependencies list and run ```mix deps.get json```

```elixir
defp deps do
	[ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "~> 0.1.0-dev", github: "elixir-lang/dynamo", tag: "elixir-0.12.2" },
      { :drink_json,   github: "evan108108/Drink-JSON", tag: "v0.0.1" } ]
end
```


