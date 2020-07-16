testing
testQuit
	self runQuery: 'quit'.
	self assert: (self typeNameOfFirstResult = 'Quit').
	self assert: (self nameOfFirstResult = 'quit')