-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

modifiers = {
  {''},
  {'cmd'},
  {'ctrl'},
  {'alt'},
  {'shift'},
  {'cmd','shift'},
  {'ctrl','shift'},
  {'alt','shift'},
}

-- Arrow keys to FN + {i, j, k, l}
movements = {
 { 'i', 'UP'},
 { 'j', 'LEFT'},
 { 'k', 'DOWN'},
 { 'l', 'RIGHT'},
 { 'u', 'PAGEUP'},
 { 'o', 'PAGEDOWN'}
}
for j,jmod in ipairs(modifiers) do
  for i,bnd in ipairs(movements) do
    i = function()
      hs.eventtap.keyStroke(jmod,bnd[2])
      k.triggered = true
    end
    k:bind(jmod, bnd[1], i, nil, i)
  end
end

-- Home and End to FN + {u, o}
-- HYPER+u: Home
homeFunc = function()
  hs.eventtap.keyStroke({}, 'HOME')
  k.triggered = true
end
k:bind({}, 'u', homeFunc, nil, homeFunc)

-- HYPER+o: End
endFunc = function()
  hs.eventtap.keyStroke({}, 'END')
  k.triggered = true
end
k:bind({}, 'o', endFunc, nil, endFunc)


-- Page Up and Down to ALT + {i, k}
-- ALT+i: Page Up
pageupFunc = function()
  hs.eventtap.keyStroke({}, 'PAGEUP')
end
hs.hotkey.bind('alt', 'i', pageupFunc, nil, pageupFunc)

-- ALT+k: Page Down
pagedownFunc = function()
  hs.eventtap.keyStroke({}, 'PAGEDOWN')
end
hs.hotkey.bind('alt', 'k', pagedownFunc, nil, pagedownFunc)


-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

-- Reload config when any lua file in config directory changes
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == '.lua' then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
        print('reloaded')
    end
end
local myWatcher = hs.pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/', reloadConfig):start()