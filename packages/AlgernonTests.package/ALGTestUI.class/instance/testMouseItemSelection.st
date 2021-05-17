testing mouse handling
testMouseItemSelection
	| position |
	self runQuery: 'ALGCore'.
	position:= (self algInstance itemList items third) bounds center + self algInstance itemList bounds origin.
	self algInstance itemList shouldItemsHandleMouseOver: true.
	self dispatchMouseMoveEvent: #mouseEnter atPosition: position.
	World doOneCycle.
	self assert: self algInstance itemList selectedItem item equals: self itemMorphs third item