testing
testScrollingInputField
	| input field |
	input := ALGFakeKeyboardEvent new 
						keyString: 'a';
						yourself.
	field := ALGFakeInputWrapper newWithoutController.
	field normalKeyStroke: input.
	self deny: field scrollCalls equals: 0