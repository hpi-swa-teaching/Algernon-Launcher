accessing
cache
	cache ifNil: [ self initializeCache. ].
	^ cache