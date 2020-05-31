testing
testResultTextWrap
	"Try running the garbage collector if test fails"
	| resultItem queryWithLongResult |
	queryWithLongResult := 'help do'.
	self runQuery: queryWithLongResult.
	resultItem :=self algerInstance itemList items second.
	self assert: (resultItem nameMorph) isWrapped