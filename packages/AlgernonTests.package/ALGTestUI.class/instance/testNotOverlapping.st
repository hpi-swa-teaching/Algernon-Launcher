testing
testNotOverlapping
	"Try running the garbage collector if test fails"
	
	| textField resultList |
	textField := algerInstance textField.
	textField contents: '= mor'.
	resultList := algerInstance itemList fullBounds.
	self deny: (resultList containsPoint: textField fullBounds bottomRight)