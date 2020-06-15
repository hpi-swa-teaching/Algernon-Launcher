testing
testNormalKeyStrokesSetsCursorColor
	| input field|
	input := ALGFakeKeyboardEvent new 
						keyString: 'a'; 
						isKeyUp: false.
	self algerInstance activate.
	field :=self algerInstance textField
	normalKeyStroke: input.
	self assert: (field paragraph caretColor = field class cursorColor).
	 