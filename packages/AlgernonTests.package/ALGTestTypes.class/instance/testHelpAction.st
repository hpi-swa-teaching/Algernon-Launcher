testing help type
testHelpAction
	self runQuery: 'help browse'.
	self algInstance doActionOnSelectedEvent: nil.
	self assert: self algInstance query equals: 'browse '