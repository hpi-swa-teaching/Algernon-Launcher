testing
testHelpItemsQuestionMark
	self runQuery: '?'.
	self assertOnlyHelpItemsShown.