testing
testSave
	self runQuery: 'save'.
	self assert: (self typeNameOfFirstResult = 'Quit').
	self assert: (self nameOfFirstResult= 'save')