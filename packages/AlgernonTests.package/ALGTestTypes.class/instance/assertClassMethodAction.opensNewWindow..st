testing method type
assertClassMethodAction: anActionName opensNewWindow: aWindowName
	self runQuery: 'ALGCore' withCursorAt: 'Class'.
	self algInstance showChildList.
	self runQuery: 'cleanup'.
	self algInstance showChildList.
	self assertQuery: anActionName opensNewWindow: aWindowName