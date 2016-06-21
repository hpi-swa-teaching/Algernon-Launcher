actions
doit

	| command textFieldContents |
	textFieldContents := self typeObject textField contents.
	textFieldContents ifEmpty:  [self flag: #bug.  ^ true ]. "textField should not be empty"
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	^ Compiler evaluate: command for: self logged: false
		