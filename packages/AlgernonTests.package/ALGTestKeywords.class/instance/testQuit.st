testing
testQuit
	self runQuery: 'quit'.
	self assert: (self typeNameOfFirstResult = 'SystemCommand').
	self assert: (self nameOfFirstResult = 'quit')