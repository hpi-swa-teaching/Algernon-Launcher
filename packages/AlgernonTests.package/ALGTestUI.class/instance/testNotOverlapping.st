testing
testNotOverlapping
	"Try running the garbage collector if test fails"
	
	| textField resultList |
	textField := self algerInstance textField.
	textField contents: '= mor'.
	resultList := self algerInstance itemList fullBounds.
	self deny: (resultList containsPoint: textField fullBounds bottomRight)