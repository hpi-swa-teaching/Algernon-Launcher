testing world menu types
testDifferentActionsForDifferentMenus

	self runQuery: 'Transcript clear'.
	self assert: self items first algerActions first name = 'do'.
	self runQuery: 'File List'.
	self assert: self items first algerActions first name = 'open'.
	self runQuery: 'http proxy editor'.
	self assert: self items first algerActions first name = 'open'.
	self runQuery: 'Squeak Swiki'.
	self assert: self items first algerActions first name = 'help'.
	self runQuery: 'Save'.
	self assert: self items first algerActions first name = 'run'.
	self runQuery: 'RecoverChanges'.
	self assert: self items first algerActions first name = 'open'.