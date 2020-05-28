instance creation
newFrom: anItem target: target selector: aSymbol argumentList: argList in: aMenuMorph

	^ self basicNew
		item: anItem;
		menuMorph: aMenuMorph;
		initialize;
		contents: anItem name;
		yourself