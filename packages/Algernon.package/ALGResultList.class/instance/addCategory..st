updating
addCategory: anAlgercat

	| itemMorph |
	itemMorph := ALGResultItemMorph newWithContents: anAlgercat title in: self.
	self addMorphBack: itemMorph