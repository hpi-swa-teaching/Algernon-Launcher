web
evaluateResponse: aWebResponse
	
	[| json | 
		self typeObject resetStatusMessage.
		json := Json readFrom: (aWebResponse content readStream).
		(json includesKey: 'error')
			ifTrue: [Exception signal: ((json at: 'error') at: 'message')].
			
		self webResults: (self createWebResultItemsFrom: (json at: 'items'))] 
			on: Exception do: [:exception | ^ self displayError: exception].
			
	"TODO: Find a better way of updating the children without clearing the complete cache."
	ALGCore currentInstance itemProvider cache clear.
	ALGCore currentInstance updateItemList.