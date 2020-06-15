testing
testNormalKeyStrokesSetsCursorColor
	| input field|
	input := ALGFakeKeyboardEvent new 
						keyString: 'a'; 
						isKeyUp: false.
	Algernon open.
	field := Algernon currentInstance textField
	normalKeyStroke: input.
	self assert: (field paragraph caretColor = field class cursorColor).
	 