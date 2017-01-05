-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
-- send Hyper + ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

-- Trigger existing hyper key shortcuts
knownkeys = {
  {'v', 'vim'},
  {'s', 'safari'},
  {'c', 'chrome'},
  {'l', 'clear'},
  {'e', 'mail'},
  {'f', 'finder'},
  {'g', 'github'},
  {'o', 'omnifocus'},
  {'p', 'preview'},
  {'r', 'sublimetext'},
  {'t', 'textmate'},
  {'b', 'tweetbot'},
  {'w', 'iawriter'},
  {'x', 'xcode'},
  {'a', 'spotlight'},
  {'m', 'vox'},
  {'[', 'window management left'},
  {']', 'window management right'},
  {'\\', 'window management center'},
  {'Return', 'window management full'},
  {'F12', 'active project'}
}
for i, key in ipairs(knownkeys) do
  k:bind({}, key[1], function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, key[1]); k.triggered = true; end)
end
