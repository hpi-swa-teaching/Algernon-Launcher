testing mouse handling
testClickOnResultItem
	| position |
	self runQuery: 'ALGCore'.
	position := self itemMorphs second bounds center + self algInstance itemList bounds origin.
	self 
		assert: [self dispatchMouseEvent: #mouseDown atPosition: position]
		opensNewWindow: 'System Browser: ALGCore'