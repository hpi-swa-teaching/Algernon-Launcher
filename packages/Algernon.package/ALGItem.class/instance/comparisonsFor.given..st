comparison
comparisonsFor: anItem given: aLowercaseString

	^ OrderedCollection newFrom: {
		self rankLessThan: anItem.
		self initialsLessThan: anItem given: aLowercaseString.
		self nameLessThan: anItem given: aLowercaseString.
		self name < anItem name }
