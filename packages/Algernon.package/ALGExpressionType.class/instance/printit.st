actions
printit

	| command textFieldContents |
	textFieldContents := typeObject textField contents.
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	Transcript show: command; show: ' -> ';
		show: (Compiler evaluate: command for: self logged: false); cr.
	^ true