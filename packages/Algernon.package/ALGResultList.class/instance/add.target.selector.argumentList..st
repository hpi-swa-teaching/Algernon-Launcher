adding
add: anItem target: target selector: aSymbol argumentList: argList
	"Override appending of menu items with the given label."
	| itemMorph |
	itemMorph := ALGResultItemMorph
		newFrom: anItem
		target: target
		selector: aSymbol
		argumentList: argList.
	self addMorphBack: itemMorph.