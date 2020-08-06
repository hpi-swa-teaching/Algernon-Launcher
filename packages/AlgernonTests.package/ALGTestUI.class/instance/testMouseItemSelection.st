testing mouse handling
testMouseItemSelection
	| position |
	self runQuery: 'ALGCore'.
	position:= self itemMorphs third bounds center.
	self dispatchMouseMoveEvent: #mouseEnter atPosition: position.
	self assert: self algInstance itemList selectedItem item = self itemMorphs third item.