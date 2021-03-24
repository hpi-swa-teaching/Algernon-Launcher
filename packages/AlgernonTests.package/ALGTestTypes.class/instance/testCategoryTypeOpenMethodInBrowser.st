testing category type
testCategoryTypeOpenMethodInBrowser
	| browser category |
	browser := SystemBrowser default open.
	category := 'Algernon'.
	(ALGCategoryType with: category)
		open: category
		inBrowser: browser.
	self assert: browser selectedSystemCategory = category