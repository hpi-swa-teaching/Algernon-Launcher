testing
testVisibility
	algerstance hide.
	self deny: algerstance visible.
	self assert: algerstance currentAlgertem = nil.
	algerstance show.
	self assert: algerstance visible.
	