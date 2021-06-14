updating
add: anItem target: target selector: aSymbol argumentList: argList index: index
	| itemMorph |
	itemMorph := ALGResultItemMorph
				newFrom: anItem
				target: target
				selector: aSymbol
				argumentList: argList
				in: self
				index: index.
	self scroller addMorphBack: itemMorph