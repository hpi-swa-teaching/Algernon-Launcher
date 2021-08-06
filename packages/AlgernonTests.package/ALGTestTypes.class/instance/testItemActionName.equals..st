helpers
testItemActionName: search equals: action

	self runQuery: search.
	self assert: action equals: self items first algerActions first name