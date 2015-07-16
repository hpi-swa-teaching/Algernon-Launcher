accessing
matchingPositions
	matchingPositions ifNil: [ self matchingPositions: OrderedCollection new ].
	^ matchingPositions