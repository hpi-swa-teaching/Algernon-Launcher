testing
testSaveAndQuit
	self runQuery: 'saveandquit'.
	self assert: (self items first algerType typeName = 'Quit').
	self assert: (self items first name = 'saveandquit')