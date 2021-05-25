updating
addCategory: anAlgercat
	| itemMorph |
	itemMorph := ALGResultItemMorph newWithContents: anAlgercat title in: self.
	self scroller addMorphBack: itemMorph