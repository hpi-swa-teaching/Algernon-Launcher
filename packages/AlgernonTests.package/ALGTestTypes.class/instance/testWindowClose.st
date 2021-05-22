testing window type
testWindowClose

	|browser|
	
	browser := SystemBrowser default open.
	self testOpenWindowEntry: 'SystemBrowser' withAction: 'close'.
	self assert: browser owner isNil.