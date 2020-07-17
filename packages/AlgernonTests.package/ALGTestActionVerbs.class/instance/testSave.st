testing
testSave
	self runQuery: 'save'.
	self assert: (self typeNameOfFirstResult = 'SystemCommand').
	self assert: (self nameOfFirstResult= 'save')