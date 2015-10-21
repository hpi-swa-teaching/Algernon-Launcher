running
tearDown

	super tearDown.
	allBrowsersNow := self currentBrowsers.
	previouslyOpenedBrowsers do:[:each | allBrowsersNow remove:each ifAbsent:[]].
	allBrowsersNow do:[:each | each delete]