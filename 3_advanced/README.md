# Advanced Example

This example similarly builds some text files, but makes use of different types
of variable assignments, wildcards, and dependencies.

## Concepts

- More built-in (automatic) rule-scope variables:
  - ``$@``: target name.
  - ``$<``: dependency name.
  - [Full list in docs](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html).
- Wildcard ``%``
  - Used in both target and dependency names, basically safe version of regex ``*``.
- Assignment
  - ``VAR = thing``: ``$(VAR)`` is expanded/interpreted every time and may change
    if dependent variables change.
  - ``VAR := thing``: ``VAR`` is fixed at this assignment line and won't change
    between expansions (``$(VAR)``).
  - ``VAR ?= thing``: ``VAR`` is only assigned if it does not already exist.
  - ``VAR += thing``: append ``thing`` to ``VAR``.


## Try it out

- Run ``make`` and observe:
  - Expansion of the wildcard dependency name
  - The dependent rule (``%.stuff``) appends to variable ``VAR`` which modifies
    ``CONTENT`` between each target.
- Change the assignment of ``CONTENT`` from ``=`` to ``:=`` (line 6/7).
- Run ``make clean`` and then ``make`` again:
  - Notice the new assignment does not get updated with the new ``VAR``.
- Run ``make clean`` and then provide VAR: ``VAR=NEW make``:
  - Notice ``VAR`` is not assigned ``BASE`` since it is already defined.
