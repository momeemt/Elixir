defmodule Sequence.Stack do
  use GenServer

  def start_link(current_arr) do
    GenServer.start_link(__MODULE__, current_arr, name: __MODULE__)
  end

  def pop do
    GenServer.call __MODULE__, :pop
  end

  def push(element) do
    GenServer.cast __MODULE__, {:push, element}
  end

  def handle_call(:pop, _from, [head | tail]) do
    { :reply, head, tail }
  end

  def handle_cast({:push, element}, current_arr) do
    { :noreply, [element | current_arr] }
  end
end