actions
doit

	| command textFieldContents |
	textFieldContents := self typeObject textField contents.
	self flag: #FIXME. "What happens if text field is empty?"
	textFieldContents ifEmpty: [ ^ true ].
	command := textFieldContents copyFrom: 3 to: textFieldContents size. "first 2 characters are do"
	^ Compiler evaluate: command for: self logged: false
		