testing window type
testWindowContract

	|browser expendedWidth|
	
	browser := self openBrowser.
	browser expandToFullScreen.
	expendedWidth := browser width.
	self testOpenWindowEntry: 'System Browser' withAction: 'contract'.
	self assert: browser width < expendedWidth.
	browser abandon