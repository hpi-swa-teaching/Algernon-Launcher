testing
testNotOverlapping
	"Try running the garbage collector if test fails"
	
	| textField resultList |
	textField := algerstance textField.
	textField contents: '= mor'.
	resultList := algerstance itemList fullBounds.
	self deny: (resultList containsPoint: textField fullBounds bottomRight)