testing
testItemMorphDoesNotHandleMouseEvents
	|item|
	self runQuery: 'Algernon'.
	item:=self itemMorphs first.
	self deny: (item handlesMouseOver: nil).
	self deny: (item handlesMouseOverDragging: nil).
	self deny: (item handlesMouseDown: nil).