actions
createListOfAlgeractions
	^ {  ALGAction
			withName: '' 
			rank: 0
			target: self
			selector: #setQueryToKeyword 
			args: #() }