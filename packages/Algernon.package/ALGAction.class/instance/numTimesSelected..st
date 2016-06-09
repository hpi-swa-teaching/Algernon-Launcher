accessing
numTimesSelected: aNumber

	numTimesSelected := aNumber.
	self flag: #TODO. "semantics ? why?"
	self rank: (self rank + 1)