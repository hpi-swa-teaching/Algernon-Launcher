as yet unclassified
iconFor: algerItem
	| typeName iconMorph |
	 
	typeName := algerItem class name.
	iconMorph := ImageMorph new.
	iconMorph image: (imagesMap at: (self imagesMap keys detect: [:key | (key = typeName)] 
					ifNone: [self loadImage: typeName. typeName])).
	^ iconMorph