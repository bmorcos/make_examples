# Basic Example

This example just shows the basic structure of rules and dependencies.

## Concepts

- Basic structure of rules:
```
target : dependencies
  commands

```
- The first target in the Makefile is the default run with ``make``.
- Can specify a target: ``make <target>``.
- ``.PHONY`` is list of targets that don't correspond to real files.
  - Safer since the rule will run even if a file exists with the same name.
  - Faster since make doesn't check if a file exists first.

## Try it out

- Try running ``make``, by default it will pickup the first rule (``file2.txt``).
  - This will check the dependency and actually run ``file1.txt`` first.
  - Once done with the dependency (``file1.txt``), ``file2.txt`` is run.
- Try running ``make`` again. the tool knows the targets already exist so it does
  nothing.
- Try running a specific target instead of the default: ``make print1``.
- Try commenting out ``.PHONY`` and adding a file called ``clean`` in the directory.
  Then try ``make clean``. It won't do anything since a file with the target name
  exists already! This is the purpose of ``.PHONY``.
- Uncomment ``.PHONY`` and try running ``make clean`` to clear the generated files
  even though a file called ``clean`` exists.
