testing
testAlgernonChangeShortcut
	self shortcuts
		do: [ :shortcut | 
				self changeAlgernonShortcut: shortcut requiresDoubleClick: true.
				self testAlgernonShortcut: shortcut requiresDoubleclick: true.
				self changeAlgernonShortcut: shortcut requiresDoubleClick: false.
				self testAlgernonShortcut: shortcut requiresDoubleclick: false ]