testing
testSpecificHelpItem
	self runQuery: 'help browse'.
	self assert: (self nameOfFirstResult includesSubstring: 'browse: ').
	
	self runQuery: 'help fileout'.
	self assert: (self nameOfFirstResult includesSubstring: 'fileout: ').
	
	self runQuery: 'help do'.
	self assert: (self nameOfFirstResult includesSubstring: 'do: ').