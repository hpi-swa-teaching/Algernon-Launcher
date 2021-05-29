testing window type
testWindowCollapse

	|browser|
	
	browser := self openBrowser.
	self testOpenWindowEntry: 'System Browser' withAction: 'collapse'.
	self assert: browser isCollapsed.
	browser abandon.