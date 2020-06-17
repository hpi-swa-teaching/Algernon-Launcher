initialization
initializeWithAlgertype: aType

	self algerType: aType.
	self algerActions: (ALGAction createListOfAlgeractionsGiven: aType).
	self numTimesSelected: 0.
	self isRelevantForEmptyString: false
	