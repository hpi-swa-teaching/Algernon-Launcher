testing window type
testWindowExpand

	|browser initialWidth|
	
	browser := SystemBrowser default open.
	initialWidth := browser width.
	self testOpenWindowEntry: 'SystemBrowser' withAction: 'expand'.
	self assert: browser width > initialWidth.
	browser abandon.