web
showingChildren

	[self triggerWebSearch] on: Exception do: [ :exception | self displayError ]