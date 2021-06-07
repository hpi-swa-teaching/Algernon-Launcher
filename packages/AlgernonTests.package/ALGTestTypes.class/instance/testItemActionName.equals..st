helpers
testItemActionName: search equals: action

	self runQuery: search.
	self assert: self items first algerActions first name = action