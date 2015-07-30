algertem lists
classesForCategory: aCategory

	| classes |
	classes := Smalltalk allClasses asOrderedCollection.
	^ classes select: [ :each | (each category) = aCategory ]