testing
testResultTextWrap
	"Try running the garbage collector if test fails"
	| resultItem longClassName |
	longClassName := 'OptimizedBlockLocalTempReadBeforeWrittenVisitor'.
	self runQuery: longClassName.
	resultItem := algerInstance itemList submorphs at: 2.
	self assert: (resultItem nameMorph) isWrapped