actions
createListOfAlgeractions
	^ {  ALGAction
			withName: 'run' 
			rank: 0
			target: self
			selector: #setQueryToKeyword 
			args: #() }