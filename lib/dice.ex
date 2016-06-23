defmodule Dice do

    def d4, do: :random.uniform(4)

    def d6, do: :random.uniform(6)

    def d8, do: :random.uniform(8)

    def d10, do: :random.uniform(10)

    def d12, do: :random.uniform(12)

    def d20, do: :random.uniform(20)

    def d100, do: :random.uniform(100)

    def threeD6, do: d6 + d6 + d6

    # roll d20 should display "Rolling #d20 : 17!" (where 17 will be whatever # is generated.)
    defmacro roll(orig_dice_expression) do
        #quote bind_quoted: [dice_expression: dice_expression] do
        quote do
            dice_expression = unquote(orig_dice_expression)
            #IO.puts("Rolling #{String.to_atom(dice_expression)} : #{dice_expression}!")
            #IO.puts("Rolling #{inspect @dice_expression} : #{dice_expression}!")
            IO.puts("Rolling #{unquote(Macro.to_string(orig_dice_expression))} : #{dice_expression}!")
            dice_expression
        end
    end

end