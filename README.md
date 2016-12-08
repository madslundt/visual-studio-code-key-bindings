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
 * `hammerspoon/*` to `~/.hammerspoon/`
 * `karabiner-elements/configuration/karabiner.json` to `~/.karabiner.d/configuration/karabiner.json`

This add `Capslock + {I, J, K, L}` for arrow keys, `Capslock + {U, O}` for Home and End and `Alt + {I, K}` for PageUp and PageDown.

## Bonus:: Adjusting windows (inspired by [Miro's Hammerspoon config](https://github.com/miromannino/hammerspoon-config))

### Move in halves

 - `ctrl` + `alt` + `cmd` + `up`: move to the top half of the screen
 - `ctrl` + `alt` + `cmd` + `right`: move to the right half of the screen
 - `ctrl` + `alt` + `cmd` + `down`: move to the bottom half of the screen
 - `ctrl` + `alt` + `cmd` + `left`: move to the left half of the screen

By repeating these shortcuts the window is resized to be one third or two thirds and again in one half.

### Move to corners

 - `ctrl` + `alt` + `cmd` + `up` + `right`: move the window to the top-right corner
 - `ctrl` + `alt` + `cmd` + `down` + `right`: move the window to the bottom-right corner
 - `ctrl` + `alt` + `cmd` + `up` + `left`: move the window to the top-left corner
 - `ctrl` + `alt` + `cmd` + `down` + `left`: move the window to the bottom-left corner

 When the window is in the corner, it will have one half of screen height and one half of screen width.
 The arrows can be used to expand the height/width to be one third, two thirds or again one half.
 For example if the window is in the top-right corner, pressing `ctrl` + `alt` + `cmd` + `up` the window height will be resized to be one third, while pressing `ctrl` + `alt` + `cmd` + `right` the window width will be resized to be one third; in this case `ctrl` + `alt` + `cmd` + `left` and `ctrl` + `alt` + `cmd` + `down` will move the window to the top-left and bottom-right corners, respectively.

### Expand to fit the entire height or width

These are useful in case the window is in one of the corners.

 - `ctrl` + `alt` + `cmd` + `up` + `down`: expand the height to fit the entire screen height
 - `ctrl` + `alt` + `cmd` + `right` + `left`: expand the width to fit the entire screen width

### Expand to fullscreen

 - `ctrl` + `alt` + `cmd` + `f`: expand to be full screen

Note that in case the window is resized to be a half of the screen, you can also use `ctrl` + `alt` + `cmd` + `up` + `down` (or `ctrl` + `alt` + `cmd` + `right` + `left`) to resize the window full screen.

As the other shortcuts, `ctrl` + `alt` + `cmd` + `f` can be pressed multiple times to obtain a centered window of three fourth and one half of height and width. This behaviour can be customized.


Up to 10.11
----
`private.xml` is my xml file for [Karabiner](https://pqrs.org/osx/karabiner/). This file allow me to use FN + {I, J, K, L} for arrow keys.

By installing [Seil](https://pqrs.org/osx/karabiner/seil.html.en) it can set Capslock to also be your FN key. The cool thing here is that I can use, my before useless, Capslock key to control the arrow-keys by holding Capslock + {I, J, K, L}.

All this means faster typing cause I do not have to move my hand to the arrow keys any longer.

I also added `Capslock + {U, O}` for Home and End, and `Alt + {I, K}` for PageUp and PageDown.

LINUX
=====
Sadly Karabiner is only for OSX, but there are tools for Linux.
For Linux I've been using [Autokey](https://apps.ubuntu.com/cat/applications/precise/autokey-gtk/), which is not nearly as good as Karabiner, but it gets the job done.

In Karabiner it was only necessary to bind the basic up, left, down and right functionality and the more advanced (ex. shift + left) were automatically binded too.
In Autokey you have to bind the basic and the advanced settings.

`autokey_keybindings` folder should contain all the hotkeys to do the same bindings as in Karabiner.

I am using Gnome on Linux and by using the Gnome utility, it can bind Hyper (FN key) to the Capslock.
