testing window type
testWindowBringToFront

	|browser transcript|
	
	browser := self openBrowser.
	transcript := self openTranscript.
	self testOpenWindowEntry: 'System Browser' withAction: 'front'.
	self assert: browser isActive.
	browser abandon.
	transcript abandon.