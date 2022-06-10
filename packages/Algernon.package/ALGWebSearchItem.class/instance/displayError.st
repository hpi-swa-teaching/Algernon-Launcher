relevant
displayError

	self halt.
	
	self algerActions first name: 'Hello!'.
	self algerActions first changed.
	
	"self algerActions: {
		ALGAction
			withName: 'Web Search failed!'
			rank: 1
			target: self
			selector: #refresh
			args: OrderedCollection new}."
			
	self changed.
	
	ALGCore currentInstance updateItemList.
	
	Transcript show: 'Displayed ERROR!'
	