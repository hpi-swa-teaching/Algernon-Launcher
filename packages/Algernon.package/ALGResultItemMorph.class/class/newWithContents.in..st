instance creation
newWithContents: aString in: aMenuMorph

	^ self basicNew
		menuMorph: aMenuMorph;
		contents: aString;
		initialize;
		yourself