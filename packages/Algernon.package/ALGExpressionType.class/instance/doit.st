actions
doit

	| command textFieldContents |
	textFieldContents := typeObject textField contents.
	(textFieldContents size = 0) ifTrue: [ ^ true ].
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	^ Compiler evaluate: command for: self logged: false
		