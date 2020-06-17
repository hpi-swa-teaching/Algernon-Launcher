filtering
filter: anItemCollection given: aStringCollection 
	| resultItems actionVerb itemName fuzzyResultItems |
	self flag: #TODO.
	"Severe redundancies with ALGRegularFilter"
	actionVerb := aStringCollection first.
	itemName := aStringCollection allButFirst joinSeparatedBy: ' '.
	"The isRelevantGiven actionVerb is only needed for Expression"
	resultItems := anItemCollection
				select: [:each | (each isRelevantGiven: itemName)
						and: [each matchesAction: actionVerb]].
	self flag: #TODO.
	"The following line is a workaround. We should have
	fuzzy search results and non fuzzy ones."
	"We need to reset the fuzzyRank, otherwise scoring is
	not correctly calculated."
	resultItems size > self minimumItemsToCompute
		ifTrue: [resultItems
				do: [:item | item fuzzyRank: 0].
			fuzzyResultItems := self
						computeFuzzyItems: self minimumItemsToCompute
						outOf: resultItems
						given: (aStringCollection size > 1
								ifTrue: [aStringCollection allButFirst]
								ifFalse: [aStringCollection]).
			resultItems := fuzzyResultItems].
	resultItems
		do: [:each | each updateDefaultActionTo: actionVerb].
	^ resultItems