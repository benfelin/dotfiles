# dotfiles

With recent Ubuntu releases it is assumed:

- bash is the default shell
- vi is symlinked to vim
- tmux version >= 1.9

Required packages:

- [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html)
- [Perltidy](http://perltidy.sourceforge.net/perltidy.html)
- [Perlcritic](https://metacpan.org/pod/perlcritic)

# Notes about X 

- ~/.xprofile vs ~/.xsession vs ~/.xinitrc

.xprofile is just for setting up the environment when logging in with an X
session (usually via a display manager). It is similar to your .profile file,
but specific to x sessions.
The xprofile files are natively sourced by the following display managers:

    GDM - /etc/gdm/Xsession
    LightDM - /etc/lightdm/Xsession
    LXDM - /etc/lxdm/Xsession
    SDDM - /usr/share/sddm/scripts/Xsession

*Sourcing xprofile from a session started with xinit*

It is possible to source xprofile from a session started with one of the following programs:

    startx
    xinit
    XDM
    Any other Display manager which uses ~/.xsession or ~/.xinitrc

.xinitrc is run by **xinit** (and therefore also **startx**). In addition to
configuration, it is also responsible for starting the root X program (usually
a window manager such as Gnome, KDE, i3, etc.). This usually applies
when X is started manually by the user (with startx or similar).

.xsession is similar to .xinitrc but is used by **display managers** (such as
lightdm, or sddm) when a user logs in. However, with modern DMs the
user can usually choose a window manager to start, and the DM may or may not
run the .xsession file.

[Running X](https://tldp.org/HOWTO/XWindow-User-HOWTO/runningx.html)
[Blog](https://venam.nixers.net/blog/unix/2020/01/27/xconfig.html)

- ~/.Xdefaults vs ~/.Xresource

*Xlib Programming Manual P.441*

`Prior to X11R2, X resource settings were read from .Xdefaults file
in users home directory and optionally on whatever machine the X client
was running on, so multiple files was hard to maintain.

Later on, xrdb program was made to store users resource settings from
in .Xresources into the XA_RESOURCE_MANAGER property of the root window
on the current X server, so all clients connected to the same server has
access to them. If the user hasn't called xrdb to set the property, then
.Xdefaults is read.
`

[More X configuration](https://tldp.org/HOWTO/XWindow-User-HOWTO/moreconfig.html)
[Forum](https://superuser.com/questions/243914/what-is-the-difference-between-xresources-and-xdefaults#243916)

# Resetting default Tmux key bindings?

With multiple sessions and servers (-L option) it is possible to bork
keybindings beyond repair.

[github](https://github.com/tmux/tmux/issues/729)
[Forum](https://unix.stackexchange.com/questions/57641/reload-of-tmux-config-not-unbinding-keys-bind-key-is-cumulative/255343#255343)
[tmux.reset.conf]
