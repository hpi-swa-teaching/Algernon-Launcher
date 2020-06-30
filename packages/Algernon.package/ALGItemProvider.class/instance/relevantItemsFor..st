filtering
relevantItemsFor: aString

	| lcs items cacheKey |
	lcs := aString asLowercase.
	cacheKey := self cache keyFor: lcs level: self searchLevel parent: self parentItem.
	items := self cache at: cacheKey.
	items
		ifEmpty: [ items := self evaluateSearchFor: lcs ].
	self cache at: cacheKey put: items.
	^ items