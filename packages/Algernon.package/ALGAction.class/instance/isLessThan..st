comparison
isLessThan: anAction
	self flag: #TODO. "name moreImportantThan ?"
	^ self rank > anAction rank