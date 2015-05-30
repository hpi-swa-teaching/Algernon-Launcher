initialization
initializeWithAlgertype: atype
	self algertype: atype.
	algeractions := Algeraction createListOfAlgeractionsGiven: atype.
	self flag: #todo.

	self numTimesSelected: 0.
	self isRelevantForEmptyString: false.
	