testing
testSpecificHelpItem
	self runQuery: 'help browse'.
	self assert: (self items first algerType name includesSubstring: 'browse').
	
	self runQuery: 'help fileout'.
	self assert: (self items first algerType name includesSubstring: 'fileout').