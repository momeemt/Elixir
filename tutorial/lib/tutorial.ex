defmodule Tutorial do
  def main([]) do
    IO.puts(patternMatching3)
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
