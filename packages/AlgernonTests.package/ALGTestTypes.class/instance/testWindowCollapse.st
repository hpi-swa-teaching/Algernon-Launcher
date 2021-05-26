testing window type
testWindowCollapse

	|browser|
	
	browser := self openBrowser.
	self testOpenWindowEntry: 'System Browser' withAction: 'collapse'.
	Transcript show: browser isCollapsed.
	self assert: browser isCollapsed.
	browser abandon.