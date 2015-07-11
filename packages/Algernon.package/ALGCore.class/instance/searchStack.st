accessing
searchStack

	searchStack ifNil: [ self searchStack: Stack new ].
	^ searchStack