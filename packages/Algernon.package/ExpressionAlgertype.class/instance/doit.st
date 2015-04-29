actions
doit
	| command textFieldContents |
	textFieldContents := typeObject textField contents.
	command := textFieldContents copyFrom: 2 to: textFieldContents size.
	"Transcript show: command"
	^ Compiler
		evaluate: command
		for: self
		logged: false.
		