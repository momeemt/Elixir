defmodule Chop do
  def guess(actual, b..e) do
    guess_number = div(b+e, 2)
    IO.puts "現在の推測値は #{guess_number} です！"
    _guess(actual, guess_number, b..e)
  end

  defp _guess(actual, guess_number, _.._) when guess_number == actual do
    IO.puts "答えは #{guess_number} です！"
  end

  defp _guess(actual, guess_number, b.._) when guess_number > actual do
    guess(actual, b..guess_number)
  end

  defp _guess(actual, guess_number, _..e) when guess_number < actual do
    guess(actual, guess_number..e)
  end
end