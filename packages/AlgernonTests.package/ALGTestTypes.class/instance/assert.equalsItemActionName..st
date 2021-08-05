helpers
assert: action equalsItemActionName: search

	self runQuery: search.
	self assert: action equals: self items first algerActions first name