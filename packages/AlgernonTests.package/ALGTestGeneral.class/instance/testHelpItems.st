testing
testHelpItems
	self runQuery: 'help'.
	self assert: (self items allSatisfy: [:each | each algerType typeName = 'Help' ]).
	self algerInstance doActionOnSelectedEvent: nil. "pressing enter on a help text does not throw"
	self deny: (self categoryResultItems anySatisfy: [:each | each contents = ALGCategory titleTopResults]) "top results category is not shown for help"