lists
showActionList
	
	self active ifTrue: [
		itemList ifNotNil:[itemList showActionListIn: self]].