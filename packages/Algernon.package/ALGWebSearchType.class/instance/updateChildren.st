children
updateChildren

	Transcript show: 'Updating children!'.
	Transcript cr.

	[self triggerWebSearch] 
		on: Exception do: [:exception | self displayError: exception]