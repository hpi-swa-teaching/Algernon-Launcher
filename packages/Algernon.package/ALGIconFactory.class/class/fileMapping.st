mapping
fileMapping

	^ FileMapping ifNil: [self initializeFileMapping. FileMapping]  