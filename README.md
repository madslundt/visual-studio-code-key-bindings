These key bindings have I been using for Visual Studio +0.7.0.

Mac OS
===
OBS. Because of radical changes in Mac OS 10.12 Sierra Karabiner does not work.

10.12+
----------
Inspiration from [hyper-hacks](https://github.com/braydenm/hyper-hacks)

To do the following programs need to be installed:
 * [Hammerspoon](https://github.com/Hammerspoon/hammerspoon)
 * [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements)

After the installation copy the following files from this repository:
 * `hammerspoon/init.lua` to `~/.hammerspoon/init.lua`
 * `karabiner-elements/configuration/karabiner.json` to `~/.karabiner.d/configuration/karabiner.json`

This add Capslock + {I, J, K, L} for arrow keys, Capslock + {U, O} for Home and End and Alt + {I, K} for PageUp and PageDown.

Up to 10.11
----
`private.xml` is my xml file for [Karabiner](https://pqrs.org/osx/karabiner/). This file allow me to use FN + {I, J, K, L} for arrow keys.

By installing [Seil](https://pqrs.org/osx/karabiner/seil.html.en) it can set Capslock to also be your FN key. The cool thing here is that I can use, my before useless, Capslock key to control the arrow-keys by holding Capslock + {I, J, K, L}.

All this means faster typing cause I do not have to move my hand to the arrow keys any longer.

I also added Capslock + {U, O} for Home and End, and Alt + {I, K} for PageUp and PageDown.

LINUX
=====
Sadly Karabiner is only for OSX, but there are tools for Linux.
For Linux I've been using [Autokey](https://apps.ubuntu.com/cat/applications/precise/autokey-gtk/), which is not nearly as good as Karabiner, but it gets the job done.

In Karabiner it was only necessary to bind the basic up, left, down and right functionality and the more advanced (ex. shift + left) were automatically binded too.
In Autokey you have to bind the basic and the advanced settings.

`autokey_keybindings` folder should contain all the hotkeys to do the same bindings as in Karabiner.

I am using Gnome on Linux and by using the Gnome utility, it can bind Hyper (FN key) to the Capslock.
