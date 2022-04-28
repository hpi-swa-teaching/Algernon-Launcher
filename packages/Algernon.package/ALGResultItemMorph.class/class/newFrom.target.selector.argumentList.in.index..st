instance creation
newFrom: anItem target: target selector: aSymbol argumentList: argList in: aMenuMorph index: aNumber
	^ self basicNew
		item: anItem;
		menuMorph: aMenuMorph;
		index: aNumber;
		initialize;
		contents: anItem name;
		yourself