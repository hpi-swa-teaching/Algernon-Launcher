testing docking bar types
testReopenExistingWindow

	| windowResults |

	self assertQuery: 'ALGCore' opensNewWindow: 'System Browser: ALGCore'.
	self deny: 
		[ self runQuery: 'ALGCore'.
		  windowResults := self items select: [:each | each algerType isKindOf: ALGWindowType].
		  self doActionForItem: windowResults first                                                                       ]
		opensNewWindow: 'System Browser: ALGCore'