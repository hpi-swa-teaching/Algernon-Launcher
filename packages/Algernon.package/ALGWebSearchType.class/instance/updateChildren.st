children
updateChildren

	self typeObject updateStatusMessage: 'Loading...'.
	[self triggerWebSearch] 
		on: Exception do: [:exception | self displayError: exception]