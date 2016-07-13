actions
doit

	| command textFieldContents |
	textFieldContents := self typeObject textField contents.
	self flag: #FIXME. "What happens if text field is empty?"
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	^ Compiler evaluate: command for: self logged: false
		