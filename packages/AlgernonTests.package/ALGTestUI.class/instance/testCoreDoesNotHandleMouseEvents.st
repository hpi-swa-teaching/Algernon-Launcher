testing
testCoreDoesNotHandleMouseEvents
	self deny: (self algInstance handlesMouseOver: nil).
	self deny: (self algInstance handlesMouseOverDragging: nil).
	self deny: (self algInstance handlesMouseDown: nil).