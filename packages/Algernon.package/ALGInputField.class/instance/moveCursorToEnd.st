event handling
moveCursorToEnd
	self editor clearSelection.
	self cursorWrapped: self size.
	self editor selectFrom: self contents size+1 to: self contents size.