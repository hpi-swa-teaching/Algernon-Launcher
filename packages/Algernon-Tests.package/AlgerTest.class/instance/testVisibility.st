testing
testVisibility
	algerstance class initializeAlgertems.
	
	algerstance deactivate.
	self deny: algerstance visible.
	self assert: algerstance currentAlgertem = nil.
	algerstance activate.
	self assert: algerstance visible.
	