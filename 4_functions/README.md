# Function Examples

This example just goes through some common built-in functions and a simple
user-defined function as an example.

## Concepts

- Common built-in functions
  - ``subst``: for pure string substitution.
  - ``patsubst``: for substitutions of complete matches in whitespace-separated lists.
  - ``filter`` and ``filter-out``: filter items in whitespace-separated lists.
  - ``foreach``: for-loop for iterating through whitespace-separated lists.
  - Basic bare shell commands
  - [Full list in docs](https://www.gnu.org/software/make/manual/html_node/Functions.html).
- User defined function

## Try it out

- ``make base``: just show the original list of files.
- ``make subst``: string substitution and nested functions.
- ``make patsubst``: full word matching and substitution and common shorthands.
- ``make filter``: usage of ``filter`` and ``filter-out`` to extract sub-lists.
- ``make foreach``: simple example of iterating over a list and operating on elements.
- ``make shell``: single line behaviour of bare commands (not to be confused
  with ``shell`` built-in function).
- ``make user_func``: example using ``call`` to invoke a user function.
