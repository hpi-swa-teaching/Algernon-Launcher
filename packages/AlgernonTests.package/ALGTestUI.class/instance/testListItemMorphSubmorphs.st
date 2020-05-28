testing
testListItemMorphSubmorphs
	self runQuery: 'Algernon'.
	self assert: (self algerInstance itemList allSatisfy: [:item | item isTitle not and:[item submorphs size = 4]])