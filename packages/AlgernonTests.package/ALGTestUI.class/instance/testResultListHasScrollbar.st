testing appereance
testResultListHasScrollbar

	| resultListSubmorphs |
	self runQuery: 'Morph'.
	resultListSubmorphs := self algInstance itemList submorphs.
	self assert: (resultListSubmorphs anySatisfy: [:submorph | submorph class = ScrollBar])
		description: 'long resultList needs scrolling'