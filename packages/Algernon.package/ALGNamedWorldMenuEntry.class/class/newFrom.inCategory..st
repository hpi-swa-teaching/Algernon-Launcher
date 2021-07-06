instance creation
newFrom: aMorph inCategory: aString

	^ (self newFrom: aMorph)
		category: aString;
		yourself