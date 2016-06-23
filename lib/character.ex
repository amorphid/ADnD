defmodule Character do

    defmodule Stats do
        defstruct strength: 0, intelligence: 0, wisdom: 0, dexterity: 0, constitution: 0, charisma: 0
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