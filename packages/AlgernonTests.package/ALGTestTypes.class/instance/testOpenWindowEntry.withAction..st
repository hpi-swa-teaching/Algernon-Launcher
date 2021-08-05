testing window type
testOpenWindowEntry: windowEntry withAction: windowAction
	| results |
	
	self runQuery: windowAction , ' ', windowEntry.
	results := self items select: [:each | each name = windowEntry
					and: [each algerType typeName = 'Window Item']].
	self assert: results notEmpty.
	self doActionForItem: results first