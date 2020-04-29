defmodule Tutorial do
  def main([]) do
    list_concat = fn [a,b], [c,d] -> [a,b,c,d] end
    sum = fn a,b,c -> a + b + c end
    pair_tuple_to_list = fn {a, b} -> [a, b] end

    IO.inspect(list_concat.([:a,:b], [:c,:d]))
    IO.inspect(sum.(1,2,3))
    IO.inspect(pair_tuple_to_list.({ 1234, 5678 }))
  end

  def patternMatching3() do
    a = 2
    # [a, b, a] = [1, 2, 3]
    # [a, b, a] = [1, 1, 2]
    a = 1
    # ^a = 2
    ^a = 1
    ^a = 2 - a
    a
  end

  def patternMatching2() do
    # [a, b, a] = [1, 2, 3]
    # [a, b, a] = [1, 1, 2]
    [a, b, a] = [1, 2, 1]
    [a, b, a]
  end

  def patternMatching1() do
    a = [1, 2, 3]
    a = 4
    4 = a
    # [a, b] = [1, 2, 3]
    a = [[1, 2, 3]]
    [a] = [[1, 2, 3]]
    # [[a]] = [[1, 2, 3]]
    a
  end
end
