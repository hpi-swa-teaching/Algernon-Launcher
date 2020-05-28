actions
printit
	
	| command |

	command := self getCommand.
	World findATranscript: nil.
	Transcript show: command; show: ' -> ';
		show: self doit.
	^ true