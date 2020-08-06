testing help type
testHelpAction
	self runQuery: 'help browse'.
	self activateCurrentItemAction.
	self assert: self algInstance query equals: 'browse '