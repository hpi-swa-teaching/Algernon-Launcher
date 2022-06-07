initialization
updateAlgertype: aType
		
	self algerType: aType.
	self algerActions: (ALGAction createListOfAlgeractionsGiven: aType).