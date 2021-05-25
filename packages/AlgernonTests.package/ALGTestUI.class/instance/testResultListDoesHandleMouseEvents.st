testing mouse handling
testResultListDoesHandleMouseEvents
	self assert: (self algInstance itemList handlesMouseOver: nil).
	self assert: (self algInstance itemList handlesMouseMove: nil)