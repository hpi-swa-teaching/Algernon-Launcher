testing
testNotOverlapping
	"Try running the garbage collector if test fails"
	
	| textField resultList |
	textField := Algernon currentInstance textField.
	textField contents: '= mor'.
	resultList := Algernon currentInstance itemList fullBounds.
	self deny: (resultList containsPoint: textField fullBounds bottomRight)