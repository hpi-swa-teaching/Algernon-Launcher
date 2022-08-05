instance creation
newStatusWithContents: aString in: aMenuMorph

	^ self basicNew
		menuMorph: aMenuMorph;
		contents: aString;
		isStatus: true;
		initialize;
		yourself