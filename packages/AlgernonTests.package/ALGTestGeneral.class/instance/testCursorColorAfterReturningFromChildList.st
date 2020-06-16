testing
testCursorColorAfterReturningFromChildList

	|searchTerm field|
	searchTerm := 'newParagraph'.
	self runQuery: searchTerm.
	self moveCursorTo: 'Class'.
	self algerInstance showChildList.
	self algerInstance showParentList.
	
	field := Algernon currentInstance textField.
	self assert: (field paragraph caretColor = field class cursorColor).
	Algernon close.