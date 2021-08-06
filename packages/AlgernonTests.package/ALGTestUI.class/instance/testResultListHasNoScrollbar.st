testing appereance
testResultListHasNoScrollbar

	| resultListSubmorphs |
	self runQuery: 'ALGActionVerbFilter'.
	resultListSubmorphs := self algInstance itemList submorphs.
	self deny: (resultListSubmorphs anySatisfy: [:submorph | submorph class = ScrollBar])
		description: 'short resultList should fit without scrolling'