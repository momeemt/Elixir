defmodule Fib do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: Fib.of(n-1) + Fib.of(n-2)
end

IO.puts "タスクの開始"
worker = Task.async(fn -> Fib.of(20) end)
IO.puts "他の処理をしています"
IO.puts "タスクの完了を待ってください"
result = Task.await(worker)
IO.puts "結果は #{result}"