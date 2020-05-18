testing
testResultTextAbbreviation
	"Try running the garbage collector if test fails"
	| textField resultItem |
	textField := algerstance textField.
	textField contents: 'OptimizedBlockLocalTempReadBeforeWrittenVisitor'.
	algerstance updateItemList.
	resultItem := algerstance itemList submorphs at: 2.
	self assert: (resultItem abbreviatedString includesSubstring: '...').