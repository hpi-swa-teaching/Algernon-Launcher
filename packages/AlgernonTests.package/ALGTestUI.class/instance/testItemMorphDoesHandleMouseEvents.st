testing mouse handling
testItemMorphDoesHandleMouseEvents
	|item|
	self runQuery: 'Algernon'.
	item := self itemMorphs first.
	self assert: (item handlesMouseOver: nil).
	self assert: (item handlesMouseDown: nil)