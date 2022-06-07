actions
doit

	| command |
	
	command := self getCommand.
	command ifEmpty: [ ^ true ].
	^ Compiler evaluate: command for: self logged: false