actions
printit

	| command textFieldContents |
	textFieldContents := self typeObject textField contents.
	textFieldContents ifEmpty: [ ^ nil ].
	command := textFieldContents allButFirst. "first character is '=' "
	World findATranscript: nil.
	Transcript show: command; show: ' -> ';
		show: (Compiler evaluate: command for: self logged: false); cr.
	^ true