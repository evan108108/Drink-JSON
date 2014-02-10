drink_json
==========

Simple JSON encoding module for Elixir lists
			
**Json.encode** sample usage:
		  
```elixir
my_list = [
	 field_1: "some value",
	 field_2: 2
] 

Json.encode my_list
#returns {"field_1": "some value", "field_2": "2"}
```
