testing
testCoreDoesNotHandleMouseEvents
	self deny: (self algerInstance handlesMouseOver: nil).
	self deny: (self algerInstance handlesMouseOverDragging: nil).