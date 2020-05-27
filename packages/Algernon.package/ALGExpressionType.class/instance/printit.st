actions
printit

	| command textFieldContents |
	textFieldContents := self typeObject textField contents.
	textFieldContents ifEmpty: [ ^ false ].
	command := textFieldContents allButFirst. "first character is '=' "
	World findATranscript: nil.
	Transcript show: command; show: ' -> ';
		show: (Compiler evaluate: command for: self logged: false).
	^ true