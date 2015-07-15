instance creation
newWithContents: aString
	| itemMorph |
	itemMorph := self new
		color: Color black;
		extent: 20 @ 22;
		contents: aString.
	^ itemMorph