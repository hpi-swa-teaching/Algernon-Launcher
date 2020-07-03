testing
testClassCommentSearch
	self runQuery: 'which Quicksilver'.
	self assertResultContians: 'ALGCore'.