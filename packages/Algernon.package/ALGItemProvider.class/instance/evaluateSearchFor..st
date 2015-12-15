filtering
evaluateSearchFor: aString

	| filterStrategy items tokens |
	tokens := self tokenize: aString.
	filterStrategy := self itemFilterFor: tokens.
	items := filterStrategy filter: self items given: tokens.
	^ self sorter sort: items given: aString