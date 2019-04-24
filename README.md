# CaesarCipher
A solution to the Caesar Cipher kata using Elixir. 

## Installation
This project uses Mix as the build tool and ExUnit as the testing framework, both of which ship with Elixir. First make sure you have [Elixir installed](https://elixir-lang.org/install.html) and then proceed to installation. 

With Elixir installed, clone or download this repository to your local machine and navigate to the root directory in the command line. 

Install the dependencies by running:
`mix deps.get`

Run the test by entering:
`mix test` 

To encrypt your own message using the cipher, navigate to the project's directory in the terminal and enter the following mix command to build an executable:
`mix escript.build`

With the executable built, run the following to encrypt a message:
`./caesar_cipher <message> <shift_key>`

