web
displayError: anException

	Transcript show: '===Algernon WebSearch==='.
	Transcript cr.
	Transcript show: anException.
	Transcript cr.
	
	self typeObject updateStatusMessage: 'ERROR: ', anException messageText