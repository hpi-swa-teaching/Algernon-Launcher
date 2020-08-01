testing
testHelpItems
	self runQuery: 'help'.
	self assertOnlyHelpItemsShown.