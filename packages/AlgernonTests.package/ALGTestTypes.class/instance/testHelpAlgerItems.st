testing
testHelpAlgerItems
	| algerItems |
	algerItems :=  ALGHelpType algertemList. 
	self deny: algerItems isEmpty.
	self assert: (algerItems allSatisfy: [:each | each algerType typeName = 'Help' ]).
	self assert: (algerItems noneSatisfy: [:each | each algerType name isEmpty ]).