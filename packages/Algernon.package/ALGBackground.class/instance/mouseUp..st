event handling
mouseUp: anEvent

	self controller ifNotNil: [ anEvent hand newKeyboardFocus: self controller ]