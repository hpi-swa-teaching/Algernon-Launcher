updating
add: anItem target: target selector: aSymbol argumentList: argList 
	| itemMorph |
	itemMorph := ALGResultItemMorph
				newFrom: anItem
				target: target
				selector: aSymbol
				argumentList: argList
				in: self.
	self addMorphBack: itemMorph