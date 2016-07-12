testing
testAlgernonKeepInput: input

	Algernon open.
	Algernon currentInstance textField contents: input.
	Algernon
			close;
			open.
	self assert: Algernon currentInstance textField contents equals: input