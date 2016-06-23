defmodule Dice do

    def d4, do: :random.uniform(4)

    def d6, do: :random.uniform(6)

    def d8, do: :random.uniform(8)

    def d10, do: :random.uniform(10)

    def d12, do: :random.uniform(12)

    def d20, do: :random.uniform(20)

    def d100, do: :random.uniform(100)

    def threeD6, do: d6 + d6 + d6

end