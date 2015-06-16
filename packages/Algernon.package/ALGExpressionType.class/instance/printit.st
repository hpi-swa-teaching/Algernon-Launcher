actions
printit
	| command textFieldContents |
	textFieldContents := typeObject textField contents.
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	Transcript show: command.
	Transcript show: ' -> '.
	Transcript
		show: (Compiler
				evaluate: command
				for: self
				logged: false).
	Transcript cr.
	^ true