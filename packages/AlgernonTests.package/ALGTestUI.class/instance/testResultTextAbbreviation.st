testing
testResultTextAbbreviation
	"Try running the garbage collector if test fails"
	| textField resultItem |
	textField := algerInstance textField.
	textField contents: 'OptimizedBlockLocalTempReadBeforeWrittenVisitor'.
	algerInstance updateItemList.
	resultItem := algerInstance itemList submorphs at: 2.
	self assert: (resultItem abbreviatedString includesSubstring: '...').