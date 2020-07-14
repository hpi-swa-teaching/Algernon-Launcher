testing
testSave
	self runQuery: 'save'.
	self assert: (self items first algerType typeName = 'Action').
	self assert: (self items first name = 'save')