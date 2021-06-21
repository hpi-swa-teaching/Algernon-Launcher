events-processing
showChildListOrDoAction: anEvent

	self currentItem hasChildren
		ifTrue: [ self showChildList ]
		ifFalse: [ self doActionOnSelectedEvent: anEvent ]