initialization
initializeWithAlgertype: aType

	self algerType: aType.
	self algerActions: (ALGAction createListOfAlgeractionsGiven: aType).
	self flag: #todo.
	self numTimesSelected: 0.
	self isRelevantForEmptyString: false
	