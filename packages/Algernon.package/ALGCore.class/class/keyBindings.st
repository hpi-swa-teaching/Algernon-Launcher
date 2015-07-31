constants
keyBindings

	KeyBindings ifNil: [ self initializeGlobalKeyBindings ].
	^ KeyBindings