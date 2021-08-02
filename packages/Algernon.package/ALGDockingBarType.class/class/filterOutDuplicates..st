helpers
filterOutDuplicates: anOrderedCollection
	
	| usedNames |
	usedNames := Set new.
	" note that ifAbsendAdd: returns whether or not the item was newly inserted "
	^ anOrderedCollection select: [ :each | usedNames ifAbsentAdd: each name ].