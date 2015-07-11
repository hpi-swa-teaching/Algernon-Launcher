as yet unclassified
fileMapping
	^ FileMapping ifNil: [self initalizeFileMapping. FileMapping]  