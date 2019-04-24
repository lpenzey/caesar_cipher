defmodule CaesarCipherTest do
  use ExUnit.Case
  doctest CaesarCipher

  test "increments letter by one" do
    assert CaesarCipher.convert("a", 1) == "b"
  end

  test "increments capital letter by one" do
    assert CaesarCipher.convert("A", 1) == "B"
  end

  test "increments letter by two" do
    assert CaesarCipher.convert("a", 2) == "c"
  end

  test "increments capital letter by two" do
    assert CaesarCipher.convert("A", 2) == "C"
  end

  test "increments letter by 26" do
    assert CaesarCipher.convert("A", 26) == "A"
  end

  test "increments two letters by one" do
    assert CaesarCipher.convert("ab", 1) == "bc"
  end

  test "increments two letters by two" do
    assert CaesarCipher.convert("ab", 2) == "cd"
  end

  test "wraps z to a" do
    assert CaesarCipher.convert("z", 1) == "a"
  end

  test "ignores non alphabetical characters" do
    assert CaesarCipher.convert("a!", 1) == "b!"
  end

  test "converts string with spaces" do
    assert CaesarCipher.convert("a b", 1) == "b c"
  end

  test "converts string with spaces and numbers" do
    assert CaesarCipher.convert("a b2", 1) == "b c2"
  end

  test "converts string with spaces, numbers, non-alphanumeric characters" do
    assert CaesarCipher.convert("a b2!", 1) == "b c2!"
  end

  test "converts string with spaces, numbers, non-alphanumeric characters and z wrap" do
    assert CaesarCipher.convert("a b2!z", 1) == "b c2!a"
  end
end
