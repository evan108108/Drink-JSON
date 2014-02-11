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

