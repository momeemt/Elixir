defmodule Tutorial do
  def main([]) do
    list_concat = fn [a,b], [c,d] -> [a,b,c,d] end
    sum = fn a,b,c -> a + b + c end
    pair_tuple_to_list = fn {a, b} -> [a, b] end

    fizzbuzz = fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _, _, third -> third
    end

    pass_fizzbuzz = fn n -> fizzbuzz.(rem(n,3), rem(n,5), n)  end

    IO.inspect(pass_fizzbuzz.(10))
    IO.inspect(pass_fizzbuzz.(11))
    IO.inspect(pass_fizzbuzz.(12))
    IO.inspect(pass_fizzbuzz.(13))
    IO.inspect(pass_fizzbuzz.(14))
    IO.inspect(pass_fizzbuzz.(15))
    IO.inspect(pass_fizzbuzz.(16))
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
