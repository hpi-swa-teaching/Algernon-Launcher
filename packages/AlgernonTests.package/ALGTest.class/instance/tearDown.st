running
tearDown
	algerInstance deactivate:nil.
	algerInstance delete.	
	allWindowsAfterwards := self currentSystemWindows.
	previouslyOpenedWindows do: [ :each | allWindowsAfterwards remove:each ifAbsent: []].
	allWindowsAfterwards do: [ :each | each delete]