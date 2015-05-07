running
tearDown
	Algernon close.
	algerstance delete.	

	allBrowsersNow := self currentBrowsers.
	previouslyOpenedBrowsers do:[:each | allBrowsersNow remove:each ifAbsent:[]].
	allBrowsersNow do:[:each | each delete].
	
	^nil