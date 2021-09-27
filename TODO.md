# Work In Progress

- battery indicator : laptop? -> power management)
    - linux: ?
    - freebsd: apm -l (remaining battery percentage)
    - openbsd: ? 

# Current issues

- tmux-reset.sh : GNU v. BSD
    - tmux-reset.sh (sed)
    - .xsession (sleep)

# Some rules

- As POSIX as possible : scripts using the Bourne shell (#!/bin/sh). When bash is required
then use '#!/usr/bin/env bash'

# OS branch

- git prompt and auto complete are installed (or not eg. openbsd) differently
for each OS
