adding
addCategory: anAlgercat
	"Add a disabled menu item as the category title."
	| itemMorph |
	itemMorph := ALGResultItemMorph newWithContents: anAlgercat title.
	self addMorphBack: itemMorph.
	self items last isEnabled: false.