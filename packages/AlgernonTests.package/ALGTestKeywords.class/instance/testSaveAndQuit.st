testing
testSaveAndQuit
	self runQuery: 'saveandquit'.
	self assert: (self typeNameOfFirstResult = 'SystemCommand').
	self assert: (self nameOfFirstResult = 'saveandquit')