testing
testHighlightOnKeyword

	| input field |
	
	input := ALGFakeKeyboardEvent new 
						keyString: '='; 
						isKeyUp: true;
						yourself.
	self algInstance activate.
	field :=self algInstance textField normalKeyStroke: input.
	self assert: ((field inputfield text attributesAt: 1) size) equals: 1
	
	