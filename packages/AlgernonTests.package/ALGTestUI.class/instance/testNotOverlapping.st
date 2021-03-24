testing positioning
testNotOverlapping
	"Try running the garbage collector if test fails"
	| textField resultList |
	textField := self algInstance textField.
	textField contents: '= mor'.
	resultList := self algInstance itemList fullBounds.
	self deny: (resultList containsPoint: textField fullBounds bottomRight)