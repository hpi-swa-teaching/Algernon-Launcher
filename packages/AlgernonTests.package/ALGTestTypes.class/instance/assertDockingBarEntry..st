testing docking bar types
assertDockingBarEntry: aName
	self runQuery: aName.
	self assert: 'Docking Bar Item' equals: self typeNameOfFirstResult.
	self assert: aName equals: self nameOfFirstResult