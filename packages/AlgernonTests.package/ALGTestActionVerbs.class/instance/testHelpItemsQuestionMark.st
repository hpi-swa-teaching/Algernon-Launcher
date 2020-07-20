testing
testHelpItemsQuestionMark
	self runQuery: '?'.
	self assert: (self items allSatisfy: [:each | each algerType typeName = 'Help' ]).
	self deny: (self categoryResultItems anySatisfy: [:each | each contents = ALGCategory titleTopResults]). "top results category is not shown for help"