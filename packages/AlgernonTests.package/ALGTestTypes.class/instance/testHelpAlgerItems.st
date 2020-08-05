testing help type
testHelpAlgerItems
	| algerItems |
	algerItems :=  ALGHelpType algertemList. 
	self denyTypeIsEmpty: ALGHelpType.
	self assert: (algerItems allSatisfy: [:each | each algerType typeName = 'Help' ]).
	self assert: (algerItems noneSatisfy: [:each | each algerType name isEmpty ]).