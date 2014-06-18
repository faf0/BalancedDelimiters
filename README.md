About
=====

Program which determines whether the brackets in a string are balanced.
E.g., the string '({})[]' is balanced, whereas the string '([]{)})' is
not.

Usage
=====

Reads a string from stdin and returns whether the delimiters are balanced.
The variable 'acceptNonBrackets' in the code determines whether non-bracket
characters are to be ignored or not.
In the latter case (which is the default), a non-bracket character in the string
leads to the answer 'False' being returned.

