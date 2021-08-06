events-processing
showChildListOrDoAction: anEvent

	self currentItem hasChildren
		ifTrue: [ ^ self showChildList ].
	self class executeOnTab
		ifTrue: [ self doActionOnSelectedEvent: anEvent ]