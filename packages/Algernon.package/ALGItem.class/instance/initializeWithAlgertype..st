initialization
initializeWithAlgertype: aType

	self algertype: aType.
	self algeractions: (ALGAction createListOfAlgeractionsGiven: aType).
	self flag: #todo.
	self numTimesSelected: 0.
	self isRelevantForEmptyString: false
	