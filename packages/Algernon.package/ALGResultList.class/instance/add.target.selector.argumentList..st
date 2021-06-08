updating
add: anItem target: target selector: aSymbol argumentList: argList 
	| itemMorph |
	itemMorph := ALGResultItemMorph
				newFrom: anItem
				target: target
				selector: aSymbol
				argumentList: argList
				in: self
				index: self currentItemIndex.
	self currentItemIndex: self currentItemIndex + 1.
	self scroller addMorphBack: itemMorph