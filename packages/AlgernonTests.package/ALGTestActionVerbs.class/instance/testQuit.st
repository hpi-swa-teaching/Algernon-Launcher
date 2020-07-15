testing
testQuit
	self runQuery: 'quit'.
	self assert: (self items first algerType typeName = 'Quit').
	self assert: (self items first name = 'quit')