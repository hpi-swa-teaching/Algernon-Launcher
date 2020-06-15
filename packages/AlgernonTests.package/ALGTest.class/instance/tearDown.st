running
tearDown
	algerInstance deactivate:nil.
	algerInstance delete.	
	allWindowsAfterwards := self currentSystemWindows.
	(previouslyOpenedWindows reject: [ :each | allWindowsAfterwards includes: each ]) do: [ :each | each delete]