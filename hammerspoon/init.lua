local function keyCode(key, modifiers)
  modifiers = modifiers or {}

  return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
  end
end

hyper = {"ctrl", "alt", "cmd"}
hypershift = {"ctrl", "alt", "cmd", "shift"}

-- CTRL + {i, j, k, l}
hs.hotkey.bind({'ctrl'}, 'i', keyCode('up'), nil, keyCode('up'))
hs.hotkey.bind({'ctrl'}, 'j', keyCode('left'), nil, keyCode('left'))
hs.hotkey.bind({'ctrl'}, 'k', keyCode('down'), nil, keyCode('down'))
hs.hotkey.bind({'ctrl'}, 'l', keyCode('right'), nil, keyCode('right'))

-- CTRL + SHIFT + {i, j, k, l}
hs.hotkey.bind({'ctrl', 'shift'}, 'i', keyCode('up', {'shift'}), nil, keyCode('up', {'shift'}))
hs.hotkey.bind({'ctrl', 'shift'}, 'j', keyCode('left', {'shift'}), nil, keyCode('left', {'shift'}))
hs.hotkey.bind({'ctrl', 'shift'}, 'k', keyCode('down', {'shift'}), nil, keyCode('down', {'shift'}))
hs.hotkey.bind({'ctrl', 'shift'}, 'l', keyCode('right', {'shift'}), nil, keyCode('right', {'shift'}))

-- CTRL + CMD + {i, j, k, l}
hs.hotkey.bind({'ctrl', 'cmd'}, 'i', keyCode('up', {'cmd'}), nil, keyCode('up', {'cmd'}))
hs.hotkey.bind({'ctrl', 'cmd'}, 'j', keyCode('left', {'cmd'}), nil, keyCode('left', {'cmd'}))
hs.hotkey.bind({'ctrl', 'cmd'}, 'k', keyCode('down', {'cmd'}), nil, keyCode('down', {'cmd'}))
hs.hotkey.bind({'ctrl', 'cmd'}, 'l', keyCode('right', {'cmd'}), nil, keyCode('right', {'cmd'}))

-- CTRL + ALT + {i, j, k, l}
hs.hotkey.bind({'ctrl', 'alt'}, 'i', keyCode('up', {'alt'}), nil, keyCode('up', {'alt'}))
hs.hotkey.bind({'ctrl', 'alt'}, 'j', keyCode('left', {'alt'}), nil, keyCode('left', {'alt'}))
hs.hotkey.bind({'ctrl', 'alt'}, 'k', keyCode('down', {'alt'}), nil, keyCode('down', {'alt'}))
hs.hotkey.bind({'ctrl', 'alt'}, 'l', keyCode('right', {'alt'}), nil, keyCode('right', {'alt'}))

-- CTRL + SHIFT + CMD + {i, j, k, l}
hs.hotkey.bind({'ctrl', 'shift', 'cmd'}, 'i', keyCode('up', {'shift', 'cmd'}), nil, keyCode('up', {'shift', 'cmd'}))
hs.hotkey.bind({'ctrl', 'shift', 'cmd'}, 'j', keyCode('left', {'shift', 'cmd'}), nil, keyCode('left', {'shift', 'cmd'}))
hs.hotkey.bind({'ctrl', 'shift', 'cmd'}, 'k', keyCode('down', {'shift', 'cmd'}), nil, keyCode('down', {'shift', 'cmd'}))
hs.hotkey.bind({'ctrl', 'shift', 'cmd'}, 'l', keyCode('right', {'shift', 'cmd'}), nil, keyCode('right', {'shift', 'cmd'}))

-- CTRL + SHIT + ALT + {i, j, k, l}
hs.hotkey.bind({'ctrl', 'shift', 'alt'}, 'i', keyCode('up', {'shift', 'alt'}), nil, keyCode('up', {'shift', 'alt'}))
hs.hotkey.bind({'ctrl', 'shift', 'alt'}, 'j', keyCode('left', {'shift', 'alt'}), nil, keyCode('left', {'shift', 'alt'}))
hs.hotkey.bind({'ctrl', 'shift', 'alt'}, 'k', keyCode('down', {'shift', 'alt'}), nil, keyCode('down', {'shift', 'alt'}))
hs.hotkey.bind({'ctrl', 'shift', 'alt'}, 'l', keyCode('right', {'shift', 'alt'}), nil, keyCode('right', {'shift', 'alt'}))

-- CTRL + CMD + ALT + {i, j, k, l}
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'i', keyCode('up', {'cmd', 'alt'}), nil, keyCode('up', {'cmd', 'alt'}))
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'j', keyCode('left', {'cmd', 'alt'}), nil, keyCode('left', {'cmd', 'alt'}))
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'k', keyCode('down', {'cmd', 'alt'}), nil, keyCode('down', {'cmd', 'alt'}))
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'l', keyCode('right', {'cmd', 'alt'}), nil, keyCode('right', {'cmd', 'alt'}))


-- CTRL + {u, o}
hs.hotkey.bind({'ctrl'}, 'u', keyCode('left', {'cmd'}), nil, keyCode('left', {'cmd'}))
hs.hotkey.bind({'ctrl'}, 'o', keyCode('right', {'cmd'}), nil, keyCode('right', {'cmd'}))

-- CTRL + SHIFT + {u, o}
hs.hotkey.bind({'ctrl', 'shift'}, 'u', keyCode('left', {'cmd', 'shift'}), nil, keyCode('left', {'cmd', 'shift'}))
hs.hotkey.bind({'ctrl', 'shift'}, 'o', keyCode('right', {'cmd', 'shift'}), nil, keyCode('right', {'cmd', 'shift'}))

-- CTRL + ALT + {u, o}
hs.hotkey.bind({'ctrl', 'alt'}, 'u', keyCode('left', {'cmd', 'alt'}), nil, keyCode('left', {'cmd', 'alt'}))
hs.hotkey.bind({'ctrl', 'alt'}, 'o', keyCode('right', {'cmd', 'alt'}), nil, keyCode('right', {'cmd', 'alt'}))

-- CTRL + CMD + {u, o}
hs.hotkey.bind({'ctrl', 'cmd'}, 'u', keyCode('up', {'cmd'}), nil, keyCode('up', {'cmd'}))
hs.hotkey.bind({'ctrl', 'cmd'}, 'o', keyCode('down', {'cmd'}), nil, keyCode('down', {'cmd'}))

-- CTRL + CMD + SHIFT + {u, o}
hs.hotkey.bind({'ctrl', 'cmd', 'shift'}, 'u', keyCode('up', {'cmd', 'shift'}), nil, keyCode('up', {'cmd', 'shift'}))
hs.hotkey.bind({'ctrl', 'cmd', 'shift'}, 'o', keyCode('down', {'cmd', 'shift'}), nil, keyCode('down', {'cmd', 'shift'}))

-- CTRL + CMD + ALT + {u, o}
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'u', keyCode('up', {'cmd', 'alt'}), nil, keyCode('up', {'cmd', 'alt'}))
hs.hotkey.bind({'ctrl', 'cmd', 'alt'}, 'o', keyCode('down', {'cmd', 'alt'}), nil, keyCode('down', {'cmd', 'alt'}))


-- ALT + {i, k}
hs.hotkey.bind({'alt'}, 'i', keyCode('pageup'), nil, keyCode('pageup'))
hs.hotkey.bind({'alt'}, 'k', keyCode('pagedown'), nil, keyCode('pagedown'))

require('watcher')
require('position')