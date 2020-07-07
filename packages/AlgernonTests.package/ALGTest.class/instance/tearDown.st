running
tearDown
	algerInstance deactivate:nil.
	algerInstance delete.	
	allWindowsAfterwards := self currentSystemWindows.
	(allWindowsAfterwards reject: [ :each | previouslyOpenedWindows includes: each ]) do: [ :each | each delete]
	