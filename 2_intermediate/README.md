# Intermediate Example

This example is similar in behaviour to the basic example but it makes use of
some variables to make the rules more manageable for updates or long lists.

## Concepts

- Variables (``VAR = stuff``) and variable expansion (``$(VAR)``).
- Built-in (automatic) rule variable ``$@`` which corresponds to the target name.
- Targets with no commands used to build multiple targets vie dependencies.

## Try it out

- Try running ``make`` to build the two .txt files
- Add a new file to the ``FILES`` variable and run again
  - Notice make only builds the newly added file and doesn't rerun the already
    built files.
- Run ``make clean``. Since we use the ``$(FILES)`` variable in ``clean`` it still
  functions as expected despite updating the file list.
