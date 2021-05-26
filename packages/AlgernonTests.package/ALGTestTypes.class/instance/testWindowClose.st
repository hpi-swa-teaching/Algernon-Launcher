testing window type
testWindowClose

	|browser|
	
	browser := self openBrowser.
	self testOpenWindowEntry: 'System Browser' withAction: 'close'.
	self assert: browser owner isNil.