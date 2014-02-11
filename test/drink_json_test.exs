defmodule DrinkJsonTest do
  use ExUnit.Case

  test "Simple list to JSON string" do
    assert(
      ([ one: "1",two: 2, three: "three" ] |> DrinkJson.encode) == "{ \"one\": \"1\", \"two\": \"2\", \"three\": \"three\" }"
    )
  end

  test "Complicated List to JSON string" do
    mylist = [
      one: "1",
      two: 2,
      three: "three",
      "four": [
        nest1: "dude",
        "nest_nest:": [ 
          [the_inside: "\"ti\""],
          [the_inside: "ti2"],
        ]
      ]
    ]

    expected_result = "{ \"one\": \"1\", \"two\": \"2\", \"three\": \"three\", \"four\": { \"nest1\": \"dude\", \"nest_nest:\": [ { \"the_inside\": \"\\\"ti\\\"\" }, { \"the_inside\": \"ti2\" } ] } }"

    assert( DrinkJson.encode(mylist) == expected_result )
  end

end
