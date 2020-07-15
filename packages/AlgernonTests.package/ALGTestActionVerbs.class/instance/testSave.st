testing
testSave
	self runQuery: 'save'.
	self assert: (self items first algerType typeName = 'Quit').
	self assert: (self items first name = 'save')