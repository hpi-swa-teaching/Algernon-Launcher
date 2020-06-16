testing
testCursorColorAfterReturningFromChildList

	| field |
	self runQuery: 'newParagraph'.
	self moveCursorTo: 'Class'.
	self algerInstance showChildList.
	self algerInstance showParentList.
	
	field := Algernon currentInstance textField.
	self assert: (field paragraph caretColor = field class cursorColor).