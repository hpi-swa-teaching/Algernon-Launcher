actions
doit

	| command textFieldContents |
	textFieldContents := typeObject textField contents.
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	^ Compiler evaluate: command for: self logged: false
		