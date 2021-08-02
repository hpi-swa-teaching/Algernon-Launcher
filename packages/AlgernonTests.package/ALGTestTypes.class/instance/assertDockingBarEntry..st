testing docking bar types
assertDockingBarEntry: aName
	self runQuery: aName.
	self assert: self typeNameOfFirstResult = 'Docking Bar Item'.
	self assert: self nameOfFirstResult = aName