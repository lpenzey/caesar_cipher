defmodule CliTest do
  use ExUnit.Case
  import CaesarCipher.CLI, only: [parse_args: 1]

  test ":help returned by option parsing with -h and --help options" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
    assert parse_args(["anything"]) == :help
  end

  test "two values returned if two given" do
    assert parse_args(["message", "5"]) == {"message", 5}
  end
end
