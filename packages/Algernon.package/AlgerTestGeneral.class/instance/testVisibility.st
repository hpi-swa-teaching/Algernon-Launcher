testing
testVisibility
	algerstance class initializeAlgertems.
	
	algerstance deactivate.
	self deny: algerstance visible.
	self assert: algerstance itemList selectedListItem   = nil.
	algerstance activate.
	self assert: algerstance visible.
	