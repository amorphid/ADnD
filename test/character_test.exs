defmodule CharacterTest do
    use ExUnit.Case
    doctest Character

    test "the truth" do
        assert 1 + 1 == 2
    end

    test "Character with no stats." do
        c = %Character{ name: "Trumpskin"}
        assert c.stats.intelligence == 0
    end

    test "Character with rolled stats." do
        c = Character.roll_stats(%Character{ name: "Trumpskin"})
        assert c.stats.intelligence != 0
    end

end