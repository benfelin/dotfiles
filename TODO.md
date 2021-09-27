# Current issues

- tmux-reset.sh : GNU v. BSD
    - tmux-reset.sh (sed)
    - .xsession (sleep)

- What's in PATH?
    - dmenu (.xinitrc)
    - sxhkd (?)

- battery indicator : integrate that to each OS-dedicated branch -> how to
spot desktop/laptop? (uname - ? - power management)
    - linux: ?
    - freebsd: apm -l (remaining battery percentage)
    - openbsd: ? 

- packages' discrepancy
    - linux: compton
    - freebsd: picom
    - openbsd: picom

# Some rules

- As POSIX as possible : scripts using the Bourne shell (#!/bin/sh). When bash is required
then use '#!/usr/bin/env bash'

