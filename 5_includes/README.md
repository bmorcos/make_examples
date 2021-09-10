# Include Example

Example of including multiple Makefiles to create a modular build system.

## Concepts

- Including external Makefiles

## Try it out

- Run ``make``. This has the same behaviour as ``make user_func`` from the Function
  examples but the content is split across 3 files:
  - The default ``Makefile`` which just includes the 2 other files with definitions.
  - An ``exec.mk`` script which defines the target.
  - A ``content.mk`` script which defines the variables and function.
