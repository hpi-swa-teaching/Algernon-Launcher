testing
denyQuery: query withCursorAt: aCategory opensNewWindow: windowName

	self deny:
		[ self runQuery: query withCursorAt: aCategory.
		  self activateCurrentItemAction.
		  World doOneCycle                      ] 
		opensNewWindow: windowName