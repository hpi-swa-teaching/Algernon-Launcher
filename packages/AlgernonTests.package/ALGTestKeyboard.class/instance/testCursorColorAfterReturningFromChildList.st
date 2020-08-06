testing
testCursorColorAfterReturningFromChildList
	| field |
	self runQuery: 'newParagraph' withCursorAt: 'Class'.
	self algInstance showChildList.
	self algInstance showParentList.
	field := self algInstance textField.
	self assert: field paragraph caretColor equals: field class cursorColor