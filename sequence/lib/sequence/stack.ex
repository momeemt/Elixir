defmodule Sequence.Stack do
  use GenServer

  def handle_call(:pop, _from, [head | tail]) do
    { :reply, head, tail }
  end

  def handle_cast({:push, delta}, current_arr) do
    { :noreply, [delta | current_arr] }
  end
end