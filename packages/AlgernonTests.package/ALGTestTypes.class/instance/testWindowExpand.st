testing window type
testWindowExpand

	|browser initialWidth|
	
	browser := self openBrowser.
	initialWidth := browser width.
	self testOpenWindowEntry: 'System Browser' withAction: 'expand'.
	self assert: browser width > initialWidth.
	browser abandon.