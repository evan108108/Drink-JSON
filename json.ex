defmodule Json do
	@moduledoc """
	# JSON

	Helper to encode lists as JSON
			
	**Json.encode** sample usage:
		  
	```elixir
	my_list = [
	   field_1: "some value",
	   field_2: 2
	] 

	Json.encode my_list
	#returns {"field_1": "some value", "field_2": "2"}
	```
	 """
	
	@doc "Called when head is itself a list and json (string) is passed"
	def encode([head|tail], json) when (is_list(head)) do
		encode(tail, ("#{json}, " <> encode(head)))
	end
	
	@doc "Called when head is not itself a list and json (string) is passed"
	def encode([head|tail], json) do
		encode(tail, "#{json}, #{encode_prop((elem head, 0), ((elem head, 1)))}")
	end
	
	@doc "Called when head is itself a list and json (string) is not passed"
	def encode([head|tail]) when (is_list(head)) do
		encode(tail, ("[ " <> encode(head)))
	end
		
	@doc "Called when head is not itself a list and json (string) is not passed"
	def encode([head|tail]) do
		encode( tail, encode_prop( elem(head, 0), elem(head, 1) ) )
	end
	
	@doc "Called when a list is completed and its json should be returned"
	def encode([], json) do
		if(String.starts_with? json, "[") do json <> " ]" else "{ " <> json <> " }" end
	end
	
	#Called internally to encode a property and its value when the value is a list
	defp encode_prop(key, value) when (is_list(value)) do
		"\"#{key}\": #{encode(value)}"
	end
	
	#Called internally to encode a property and its value when the value is not a list
	defp encode_prop(key, value) do
		"\"#{key}\": \"#{(value |> escape)}\""
	end
	
	#Called internally to escape a property name or property value
	defp escape(item) do
		Regex.replace(%r/\"/, "#{item}", "\\\\\"")
	end
end
