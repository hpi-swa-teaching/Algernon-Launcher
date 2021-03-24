accessing
topmostQuery
	| topmostQuery |
	topmostQuery := self firstOnSearchStack.
	^ topmostQuery
		ifNil: [self query]