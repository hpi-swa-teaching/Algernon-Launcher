testing appereance
testResultTextWrap
	"Try running the garbage collector if test fails"
	| resultItem queryWithLongResult |
	queryWithLongResult := 'help do'.
	self runQuery: queryWithLongResult.
	resultItem :=self algInstance itemList items second.
	self assert: (resultItem nameMorph) isWrapped