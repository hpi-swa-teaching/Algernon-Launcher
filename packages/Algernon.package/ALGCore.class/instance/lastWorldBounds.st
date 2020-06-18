accessing
lastWorldBounds
	
	lastWorldBounds ifNil: [^World bounds corner] ifNotNil: [^lastWorldBounds]