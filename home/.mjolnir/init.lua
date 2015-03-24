local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"

hotkey.bind({"ctrl", "cmd"}, "right", function()
  local win = window.focusedwindow()
  local screenframe = win:screen():frame()
  local f = win:frame()
  f.x = screenframe.w /2
  f.y = 0
  f.w = screenframe.w / 2
  f.h = screenframe.h
  win:setframe(f)
end)

hotkey.bind({"ctrl", "cmd"}, "left", function()
  local win = window.focusedwindow()
  local screenframe = win:screen():frame()
  local f = win:frame()
  f.x = 0
  f.y = 0
  f.w = screenframe.w / 2
  f.h = screenframe.h
  win:setframe(f)
end)

hotkey.bind({"ctrl", "cmd"}, "up", function()
  local win = window.focusedwindow()
  local screenframe = win:screen():frame()
  local f = win:frame()
  f.y = 0
  f.h = screenframe.h / 2
  win:setframe(f)
end)

hotkey.bind({"ctrl", "cmd"}, "down", function()
  local win = window.focusedwindow()
  local screenframe = win:screen():frame()
  local f = win:frame()
  f.y = screenframe.h / 2
  f.h = screenframe.h / 2
  win:setframe(f)
end)


hotkey.bind({"ctrl", "cmd"}, "U", function()
  local win = window.focusedwindow()
  local screenframe = win:screen():frame()
  local f = win:frame()
  f.x = 0
  f.y = 0
  f.w = screenframe.w
  f.h = screenframe.h
  win:setframe(f)
end)


