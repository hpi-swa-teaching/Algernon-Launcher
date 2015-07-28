filtering
relevantItemsFor: aString
	"Return a list of relevent Algertems for a given input. The list gets cached for each input."

	| lcs items |
	lcs := aString asLowercase.
	items := self cache getItem: lcs.
	items
		ifNil: [ items := self evaluateSearchFor: lcs ]
		ifNotNil: [ self updateRelevanceFor: items given: lcs ].
	self cache setItem: items at: lcs.
	^ items