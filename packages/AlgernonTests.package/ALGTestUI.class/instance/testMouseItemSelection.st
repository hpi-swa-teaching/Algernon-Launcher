testing
testMouseItemSelection
	| position moveEvent |
	self runQuery: 'ALGCore'.
	position:= self algInstance itemList submorphs third bounds center.
	moveEvent:= self dispatchMouseEvent: #mouseMove atPosition: position.
	self assert: self algInstance itemList selectedItem item = self items second.