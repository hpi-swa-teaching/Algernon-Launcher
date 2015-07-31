testing
testVisibility
	
	algerstance deactivate.
	self deny: algerstance visible.
	algerstance activate.
	self assert: algerstance visible.
	