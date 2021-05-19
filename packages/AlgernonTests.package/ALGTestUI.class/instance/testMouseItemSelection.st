testing mouse handling
testMouseItemSelection
	| position |
	self runQuery: 'ALGCore'.
	position:= (self algInstance itemList items third) bounds center + self algInstance itemList bounds origin.
	self algInstance itemList shouldItemsHandleMouseOver: true.
	self dispatchMouseMoveEvent: #mouseEnter atPosition: position.
	Transcript showln: 'x-x-x-x-x-x-x'.
	Transcript showln: position.
	Transcript showln: self algInstance itemList selectedItem item name.
	Transcript showln: self itemMorphs third item name.
	self assert: self algInstance itemList selectedItem item equals: self itemMorphs third item