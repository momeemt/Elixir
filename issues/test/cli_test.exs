defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [ parse_args: 1 ]

  test "-h, -helpオプションが :help を返すかどうか" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["-help", "anything"]) == :help
  end

  test "引数が3つ与えられたとき3つの値を返すかどうか" do
    assert parse_args(["user", "project", "99"]) == { "user", "project", 99 }
  end

  test "引数が2つ与えられたときデフォルトカウントの値を返すかどうか" do
    assert parse_args(["user", "project"]) == { "user", "project", 4 }
  end
end