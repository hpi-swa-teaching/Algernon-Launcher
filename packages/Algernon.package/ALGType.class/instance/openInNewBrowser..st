browsing
openInNewBrowser: anObject

	| browser |
	browser := Browser open.
	self open: anObject inBrowser: browser