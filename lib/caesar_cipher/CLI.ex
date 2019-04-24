defmodule CaesarCipher.CLI do
  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def process(:help) do
    IO.puts("""
    usage: caesar_cipher <message> <shift_number>
    """)

    System.halt(0)
  end

  def process({message, shift_key}) do
    IO.puts("Caesar says: #{CaesarCipher.convert(message, shift_key)}")
  end

  def parse_args(argv) do
    OptionParser.parse(argv,
      switches: [help: :boolean],
      aliases: [h: :help]
    )
    |> elem(1)
    |> args_to_internal_representation()
  end

  def args_to_internal_representation([message, shift_key]) do
    {message, String.to_integer(shift_key)}
  end

  # bad arg or --help :help
  def args_to_internal_representation(_) do
    :help
  end
end
