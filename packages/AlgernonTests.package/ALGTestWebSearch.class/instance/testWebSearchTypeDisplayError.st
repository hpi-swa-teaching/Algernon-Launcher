testing
testWebSearchTypeDisplayError

	| webSearchType |
	
	webSearchType := ALGWebSearchType with: self algInstance.
	
	[Exception signal: 'test']
		on: Exception do: [ :exception | webSearchType displayError: exception].
	
	self assert: 'ERROR: test' equals: self algInstance statusMessage