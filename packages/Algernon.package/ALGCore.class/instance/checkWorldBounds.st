visibility
checkWorldBounds

	(lastWorldBounds x > World bounds corner x
			or: [lastWorldBounds y > World bounds corner y])
		ifTrue: [self initializePosition]