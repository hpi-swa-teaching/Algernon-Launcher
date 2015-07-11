as yet unclassified
iconFor: algerItem
	| typeName iconMorph |
	 
	typeName := algerItem class name.
	iconMorph := ImageMorph new.
	iconMorph image: (self imagesMap detect: [:image | (image key = typeName)] 
					ifNone: [self loadImage: typeName. imagesMap at: typeName]).
	^ iconMorph