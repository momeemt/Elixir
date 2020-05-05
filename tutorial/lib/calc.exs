defmodule Calc do
  def sum([]), do: 0
  def sum([ head | tail ]) do
    head + sum(tail)
  end

  def mapsum([], _), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([head | tail]) do
    _max tail, head
  end
  defp _max([], maxval) do
    maxval
  end
  defp _max([head | tail], maxval) when head >= maxval do
    _max tail, head
  end
  defp _max([head | tail], maxval) when head < maxval do
    _max tail, maxval
  end

  def ceasar([], _), do: []
  def ceasar([head | tail], n) do
    [_ceasar(head, n)] ++ ceasar(tail, n)
  end
  defp _ceasar(x, n) when (x + n) > ?z do
    (x + n) - (?z - ?a + 1)
  end
  defp _ceasar(x, n) do
    x + n
  end
end