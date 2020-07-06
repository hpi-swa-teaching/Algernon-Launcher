testing
testResultListDoesNotHandleMouseEvents
	self deny: (self algInstance itemList handlesMouseOver: nil).
	self deny: (self algInstance itemList handlesMouseOverDragging: nil).