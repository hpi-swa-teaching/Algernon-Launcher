visibility
checkWorldBounds

	(self lastWorldBounds x > World bounds corner x
			or: [self lastWorldBounds y > World bounds corner y])
		ifTrue: [self initializePosition]