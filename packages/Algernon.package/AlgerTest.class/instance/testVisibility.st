testing
testVisibility
	algerstance class initializeAlgernon.
	algerstance class initializeAlgertems.
	algerstance := Algernon open.
	
algerstance hide.
	self deny: algerstance visible.
	self assert: algerstance currentAlgertem = nil.
	algerstance show.
	self assert: algerstance visible.
	