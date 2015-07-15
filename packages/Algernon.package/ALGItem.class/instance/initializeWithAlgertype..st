initialization
initializeWithAlgertype: atype
	self algertype: atype.
	algeractions := ALGAction createListOfAlgeractionsGiven: atype.
	self flag: #todo.
	self numTimesSelected: 0.
	self isRelevantForEmptyString: false.
	