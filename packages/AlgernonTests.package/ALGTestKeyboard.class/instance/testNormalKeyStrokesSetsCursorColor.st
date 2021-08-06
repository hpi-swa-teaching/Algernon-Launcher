testing
testNormalKeyStrokesSetsCursorColor
	| input field|
	input := ALGFakeKeyboardEvent new 
						keyString: 'a'; 
						isKeyUp: true.
	self algInstance activate.
	field :=self algInstance textField
	normalKeyStroke: input.
	self assert: field paragraph caretColor equals: ALGInputField cursorColor.
	 