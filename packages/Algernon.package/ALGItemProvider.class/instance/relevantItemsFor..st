filtering
relevantItemsFor: aString

	| lcs items |
	lcs := aString asLowercase.
	items := self cache getItem: lcs.
	items
		ifNil: [ items := self evaluateSearchFor: lcs ]
		ifNotNil: [ self updateRelevanceFor: items given: lcs ].
	self cache setItem: items at: lcs.
	^ items