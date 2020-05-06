defmodule MyEnum do
  def all?(list, func) do
    _all? list, true, func
  end
  defp _all?([], condition, _), do: condition
  defp _all?([head | tail], condition, func) do
    _all? tail, func.(head) && condition, func
  end

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
  def each([], _) do
    :ok
  end

  def filter(list, func), do: _filter list, [], func
  defp _filter([], res, _), do: res
  defp _filter([head | tail], res, func) do
    if func.(head) do
      _filter(tail, res ++ [head], func)
    else
      _filter(tail, res, func)
    end
  end

  def split(list, index) do
    _split(list, [], index)
  end
  defp _split([head | tail], res, index) when index > 0 do
    _split(tail, res ++ [head], index-1)
  end
  defp _split(list, res, index) when index === 0 do
    {res, list}
  end

  def take([head | tail], takeCnt) do
    _take(tail, [head], takeCnt-1)
  end
  defp _take([head | tail], res, takeCnt) when takeCnt > 0 do
    _take(tail, res ++ [head], takeCnt-1)
  end
  defp _take(_, res, _) do
    res
  end

  def flatten([]),    do: []
  def flatten([head | tail]), do: flatten(head) ++ flatten(tail)
  def flatten(x),     do: [x]
end