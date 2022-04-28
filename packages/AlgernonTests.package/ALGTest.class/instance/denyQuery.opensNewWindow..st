testing
denyQuery: query opensNewWindow: windowName

	self deny:
		[ self runQuery: query.
		  self activateCurrentItemAction.
		  World doOneCycle                      ] 
		opensNewWindow: windowName