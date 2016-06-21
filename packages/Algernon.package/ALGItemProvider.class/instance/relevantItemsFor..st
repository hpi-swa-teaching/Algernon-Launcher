filtering
relevantItemsFor: aString

	| lcs items cacheKey |
	lcs := aString asLowercase.
	cacheKey := self cache keyFor: lcs level: self searchLevel parent: self parentItem.
	items := self cache getAt: cacheKey.
	items
		ifEmpty: [ items := self evaluateSearchFor: lcs ]
		ifNotEmpty: [ self updateRelevanceFor: items given: lcs ].
	self cache putItems: items at: cacheKey.
	^ items