testing
testHelpItemsForKeyword
	self runQuery: 'open'.
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Help' ]). "Help shows up"
	self deny: (self topResults anySatisfy: [:each | each algerType typeName = 'Help' ]). "Help does not show up in top results"
	self assert: self categoryResultItems second contents equals: 'Help'. "Help is right below top items"