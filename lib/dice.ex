defmodule Dice do

    def d4, do: :random.uniform(4)

    def d6, do: :random.uniform(6)

    def d8, do: :random.uniform(8)

    def d10, do: :random.uniform(10)

    def d12, do: :random.uniform(12)

    def d20, do: :random.uniform(20)

    def d100, do: :random.uniform(100)

    def threeD6, do: d6 + d6 + d6

    # roll 3D6
    defmacro roll(dice_expression) do
        quote bind_quoted: [dice_expression: dice_expression] do
            #result = unquote(dice_expression)
            #IO.puts("Rolling #{to_string(dice_expression)} : #{result}")
            #result
            IO.puts("Rolling : #{dice_expression}!")
            dice_expression
        end
    end

end