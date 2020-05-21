testing
testResultTextAbbreviation
	"Try running the garbage collector if test fails"
	| resultItem |
	self runQuery: 'OptimizedBlockLocalTempReadBeforeWrittenVisitor'.
	resultItem := algerInstance itemList submorphs at: 2.
	self assert: (resultItem abbreviatedString includesSubstring: '...').