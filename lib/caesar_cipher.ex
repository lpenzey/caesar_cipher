defmodule CaesarCipher do
  def convert(str, shift_key) when is_binary(str) do
    char_list = String.codepoints(str)
    convert(char_list, shift_key, "")
  end

  @spec convert([binary()], any(), any()) :: any()
  def convert([head | tail], shift_key, acc) do
    <<value::utf8>> = head
    accumulator = acc <> List.to_string([shift(value, shift_key)])
    convert(tail, shift_key, accumulator)
  end

  def convert([], _shift_key, acc) do
    acc
  end

  def shift(ch, n) when ch in ?a..?z do
    rem(ch - ?a + n, 26) + ?a
  end

  def shift(ch, n) when ch in ?A..?Z do
    rem(ch - ?A + n, 26) + ?A
  end

  def shift(ch, _), do: ch
end
