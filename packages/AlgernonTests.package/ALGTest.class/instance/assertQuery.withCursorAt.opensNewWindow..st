testing
assertQuery: query withCursorAt: aCategory opensNewWindow: windowName

	^ self assert:
		[ self runQuery: query withCursorAt: aCategory.
		  self activateCurrentItemAction.
		  World doOneCycle                      ] 
		opensNewWindow: windowName