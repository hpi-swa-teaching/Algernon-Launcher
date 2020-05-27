testing
testResultListDoesNotHandleMouseEvents
	self deny: (self algerInstance itemList handlesMouseOver: nil).
	self deny: (self algerInstance itemList handlesMouseOverDragging: nil).