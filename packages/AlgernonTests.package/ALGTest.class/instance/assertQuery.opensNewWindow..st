testing
assertQuery: query opensNewWindow: windowName

	^ self assert:
		[ self runQuery: query.
		  self activateCurrentItemAction.
		  World doOneCycle                      ] 
		opensNewWindow: windowName