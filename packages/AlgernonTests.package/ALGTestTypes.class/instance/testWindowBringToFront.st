testing window type
testWindowBringToFront

	|browser transcript|
	
	browser := SystemBrowser default open.
	transcript := Transcript open.
	self testOpenWindowEntry: 'SystemBrowser' withAction: 'bring to front'.
	self assert: browser isActive.
	browser abandon.
	transcript abandon.