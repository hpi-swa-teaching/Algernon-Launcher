testing mouse handling
testResultListMouseMoveIsDelegatedToItems
	| item |
	self runQuery: 'Algernon'.
	item := self itemMorphs first.
	self deny: (item handlesMouseOver: nil).
	item menuMorph mouseMove: nil.
	self assert: (item handlesMouseOver: nil).
	self assert: (item handlesMouseDown: nil)