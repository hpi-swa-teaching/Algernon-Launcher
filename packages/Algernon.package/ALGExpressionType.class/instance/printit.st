actions
printit

	| command textFieldContents |
	textFieldContents := typeObject textField contents.
	(textFieldContents size = 0) ifTrue: [ ^ true ].
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	Transcript show: command; show: ' -> ';
		show: (Compiler evaluate: command for: self logged: false); cr.
	^ true