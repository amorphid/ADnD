defmodule Character do
    import Dice
    alias Character.Stats

    defstruct name: "", stats: %Stats{}

    def roll_stats() do
        %Stats{ strength: threeD6, intelligence: threeD6, wisdom: threeD6,
                dexterity: threeD6, constitution: threeD6, charisma: threeD6 }
    end

    def roll_stats(c = %Character{}) do
        c = %Character{ c | stats: roll_stats(c.stats) }
        c
    end

    def roll_stats(s = %Stats{}) do
        r = Map.update!(s, :strength, fn 0 -> threeD6; value -> value end)
        r = Map.update!(r, :intelligence, fn 0 -> threeD6; value -> value end)
        r = Map.update!(r, :wisdom, fn 0 -> threeD6; value -> value end)
        r = Map.update!(r, :dexterity, fn 0 -> threeD6; value -> value end)
        r = Map.update!(r, :constitution, fn 0 -> threeD6; value -> value end)
        Map.update!(r, :charisma, fn 0 -> threeD6; value -> value end)
    end

end

defimpl Inspect, for: Character.Stats do
    import Inspect.Algebra

    def inspect(item, options) do
        msg = concat(["Str:", to_doc(item.strength, options), break, ", Int:", to_doc(item.intelligence, options), break,
                      ", Wis:", to_doc(item.wisdom, options), break, ", Dex:", to_doc(item.dexterity, options), break,
                      ", Con:", to_doc(item.constitution, options), break, ", Chr:", to_doc(item.charisma, options) ])
        msg
    end
end
