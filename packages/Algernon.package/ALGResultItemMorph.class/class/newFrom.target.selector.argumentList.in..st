instance creation
newFrom: anItem target: target selector: aSymbol argumentList: argList in: aMenuMorph

	^ self basicNew
		item: anItem;
		menuMorph: aMenuMorph;
		initialize;
		contentsClipped: anItem name;
		target: target;
		selector: aSymbol;
		arguments: argList asArray;
		yourself