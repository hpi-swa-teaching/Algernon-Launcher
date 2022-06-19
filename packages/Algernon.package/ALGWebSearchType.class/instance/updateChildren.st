children
updateChildren

	[self triggerWebSearch] 
		on: Exception do: [:exception | self displayError: exception]