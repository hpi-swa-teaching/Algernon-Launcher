testing
testListItemMorphSubmorphs
	self runQuery: 'Algernon'.
	self assert: (self algerInstance itemList items allSatisfy: [:item | item isTitle ifFalse: [item submorphs size = 5] ifTrue: [item submorphs size = 1]])