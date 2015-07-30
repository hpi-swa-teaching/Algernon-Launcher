browsing
openInExistingBrowser: anObject
	
	| browser |
	browser := self existingBrowserIfNone: [SystemBrowser default open].
	self open: anObject inBrowser: browser