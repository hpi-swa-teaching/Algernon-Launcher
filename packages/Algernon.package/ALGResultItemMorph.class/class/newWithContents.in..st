instance creation
newWithContents: aString in: aMenuMorph
	^ self basicNew
		menuMorph: aMenuMorph;
		initialize;
		contentsClipped: aString;
		isEnabled: false;
		yourself