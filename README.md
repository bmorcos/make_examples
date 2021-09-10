# Examples using make and Makefiles

This is a basic overview of some ``make`` concepts including some examples. For
the most part I didn't use code/compile examples, just simple examples of
commands with a single code example at the end.

These examples were put together with:
- Ubuntu 20.04
- GCC v9.3.0
- GNU Make v 4.2.1


## Resources

The
[GNU make docs](https://www.gnu.org/software/make/manual/html_node/index.html#Top)
have detailed documentation and examples. I would also recommend (no affiliation)
what I think is a very well organized and written tutorial that explains core
concepts in detail with examples: [Learn Makefiles](https://makefiletutorial.com/)
by Chase Lambert.


## What's Inside

Each example directory will have its own README with some details, but roughly
the examples are:

### 1 Basic

Very simple example showing basic structure of targets and dependencies.

### 2 Intermediate

This example is similar in behaviour to the basic example but it makes use of
some variables to make the rules more manageable for updates or long lists.

### 3 Advanced

This example similarly builds some text files, but makes use of different types
of variable assignments, wildcards, and dependencies.

### 4 Functions

This example just goes through some common built-in functions and a simple
user-defined function as an example.

### 5 Includes

Example of including multiple Makefiles to create a modular build system.

### 6 Example Project

This is a simple hello_world C/C++ project to show a more real-world example of
Makefile usage. The Makefile is more complex than necessary for the scale of
the project but hopefully it will highlight some good practices.
