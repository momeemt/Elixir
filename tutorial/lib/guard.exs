defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} は数値"
  end

  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} はリスト"
  end

  def what_is(x) when is_atom(x) do
    IO.puts "#{x} はアトム"
  end
end