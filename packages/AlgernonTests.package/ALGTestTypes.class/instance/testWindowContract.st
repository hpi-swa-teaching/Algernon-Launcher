testing window type
testWindowContract

	|browser expendedWidth|
	
	browser := SystemBrowser default open.
	browser expand.
	expendedWidth := browser width.
	self testOpenWindowEntry: 'SystemBrowser' withAction: 'contract'.
	self assert: browser width < expendedWidth.
	browser abandon.