defmodule Tutorial do
  def main([]) do
    IO.puts(patternMatching1)
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
