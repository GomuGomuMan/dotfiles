local hyper = { "cmd", "alt", "ctrl", "shift" }
hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()


local applicationHotkeys = {
	c = 'Google Chrome',
	t = "iTerm",
	g = "GoLand",
	s = "Sublime Text"
}

for key, app in pairs(applicationHotkeys) do
	hs.hotkey.bind(hyper, key, function ()
		hs.application.launchOrFocus(app)
	end)
end
