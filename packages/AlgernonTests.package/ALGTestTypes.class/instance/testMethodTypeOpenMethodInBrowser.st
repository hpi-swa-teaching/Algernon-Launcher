testing method type
testMethodTypeOpenMethodInBrowser
	| browser |
	browser := Browser new.
	ALGMethodType new
		methodClass: ALGAction;
		open: 'name' inBrowser: browser.
	self assert: (browser methodReference asString = 'ALGAction name')