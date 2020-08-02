testing mouse handling
testMouseItemSelection
	| position moveEvent |
	self runQuery: 'ALGCore'.
	position:= self itemMorphs third bounds center.
	moveEvent:= self dispatchMouseMoveEvent: #mouseEnter atPosition: position.
	self assert: self algInstance itemList selectedItem item = self itemMorphs third item.