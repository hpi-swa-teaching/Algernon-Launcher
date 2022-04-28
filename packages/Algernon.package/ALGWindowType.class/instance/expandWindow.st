action handlers
expandWindow

	(typeObject isCollapsed)
		ifTrue: [self typeObject expand]
		ifFalse: [self typeObject expandToFullScreen]