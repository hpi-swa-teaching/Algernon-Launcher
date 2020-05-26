running
tearDown
	algerInstance deactivate:nil.
	algerInstance delete.	
	allBrowsersAfterwards := self currentBrowsers.
	previouslyOpenedBrowsers do: [ :each | allBrowsersAfterwards remove:each ifAbsent: []].
	allBrowsersAfterwards do: [ :each | each delete]