accessing
topmostQuery
	| topmostQuery |
	topmostQuery := self query.
	^ topmostQuery
		ifNil: [self firstOnSearchStack]
		ifNotNil: [self query]