testing
testSaveAndQuit
	self runQuery: 'saveandquit'.
	self assert: (self typeNameOfFirstResult = 'Quit').
	self assert: (self nameOfFirstResult = 'saveandquit')