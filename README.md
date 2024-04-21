# Lua-String-Shorten
This is a short Lua script that shortens strings and attempts to make abbreviations (but is not very good at it)
# How to use it
This should work on modern Lua versions - it works on my machine TM\
You simply execute it with your desired options and string
# Available variables
`string_to_shorten` - the string that you want to shorten/modify. Takes any string.\
`minimum_length` - Sets the minimum length of the output string(s). Can be an integer showing the amount of characters or any string which makes it default to 1. Can also be a decimal number below 1 which allows you to set a ratio between minimum_length and maximum_length.\
`maximum_length` - Sets the maximum length of the output string(s). Can be an integer showing the amount of characters or any string which makes it default to the length of `string_to_shorten`.\
`print_info` - true/false. Selects whether or not to print information during the check stage.\
`print_output` - true/false. Selects whether or not to print the output of the code.
# Example
`string_to_shorten` = `"Ghana"` -- input string\
`minimum_length` = `0.5` -- half of maximum_length\
`maximum_length` = `""` -- length of string_to_shorten\
`print_info` = `false` -- no information\
`print_output` = `true` -- prints output\
This outputs:\
`3 letter: "haa"`\
`4 letter: "Gana"`\
`5 letter: "Ghana"`
