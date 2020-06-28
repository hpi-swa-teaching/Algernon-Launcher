filtering
relevantItemsFor: aString

	| lcs resultItems cacheKey |
	lcs := aString asLowercase.
	cacheKey := self cache keyFor: lcs level: self searchLevel parent: self parentItem.
	resultItems := self cache getAt: cacheKey.
	resultItems
		ifEmpty: [ resultItems := self evaluateSearchFor: lcs ]
		ifNotEmpty: [ self updateRelevanceFor: resultItems given: lcs ].
	self cache putItems: resultItems at: cacheKey.
	^ resultItems