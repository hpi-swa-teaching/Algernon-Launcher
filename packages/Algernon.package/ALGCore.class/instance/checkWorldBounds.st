visibility
checkWorldBounds

	(self bounds corner x > World bounds corner x
			or: [self bounds corner y > World bounds corner y])
		ifTrue: [self initializePosition]