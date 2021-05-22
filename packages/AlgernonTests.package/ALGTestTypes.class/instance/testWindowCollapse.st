testing window type
testWindowCollapse

	|browser|
	
	browser := SystemBrowser default open.
	browser collapse.
	self testOpenWindowEntry: 'SystemBrowser' withAction: 'collapse'.
	self assert: browser isCollapsed.
	browser abandon.