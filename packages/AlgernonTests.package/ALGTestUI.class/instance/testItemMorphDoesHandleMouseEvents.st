testing mouse handling
testItemMorphDoesHandleMouseEvents
	|item|
	self runQuery: 'Algernon'.
	item := self itemMorphs first.
	self deny: (item handlesMouseOver: nil).
	item menuMorph shouldItemsHandleMouseOver: true.
	self assert: (item handlesMouseOver: nil).
	self assert: (item handlesMouseDown: nil)