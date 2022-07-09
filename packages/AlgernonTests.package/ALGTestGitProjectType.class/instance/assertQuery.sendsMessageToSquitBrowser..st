testing
assertQuery: aQuery sendsMessageToSquitBrowser: aSelector
	
	ALGSquitBrowser := ALGFakeActionTarget new.
	
 	self
		runQuery: aQuery;
	 	activateCurrentItemAction;
	 	assert: ALGSquitBrowser lastMessageReceived equals: aSelector
