defmodule Monitor1 do
  import :timer, only: [ sleep: 1 ]

  def sad_function do
    sleep 500
    exit(:boom)
  end

  def run do
    res = spawn_monitor(Monitor1, :sad_function, [])
    IO.puts inspect res
    receive do
      msg ->
        IO.puts "#{inspect msg}が返却されました"
    after 1000 ->
      IO.puts "接続が切れました"
    end
  end
end

Monitor1.run