filtering
evaluateSearchFor: aString

	| filterStrategy resultItems tokens |
	tokens := self tokenize: aString.
	filterStrategy := self itemFilterFor: tokens.
	resultItems := filterStrategy filter: self items given: tokens.
	^ self sorter sort: resultItems given: aString