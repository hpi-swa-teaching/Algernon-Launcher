accessing
keyBindings

	^ KeyBindings ifNil: [self initializeGlobalKeyBindings. KeyBindings]