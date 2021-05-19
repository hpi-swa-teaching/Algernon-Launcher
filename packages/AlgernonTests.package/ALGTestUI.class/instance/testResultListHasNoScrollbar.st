testing appereance
testResultListHasNoScrollbar

	| resultListSubmorphs |
	self runQuery: 'ALGActionVerbFilter'.
	resultListSubmorphs := self algInstance itemList submorphs.
	Transcript showln: 'NO SCROLLBAR'.
	Transcript showln: resultListSubmorphs.
	self deny: (resultListSubmorphs anySatisfy: [:submorph | submorph class = ScrollBar])
		description: 'short resultList should fit without scrolling'