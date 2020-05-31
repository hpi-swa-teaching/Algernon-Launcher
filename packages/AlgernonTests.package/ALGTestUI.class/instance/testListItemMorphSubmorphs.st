testing
testListItemMorphSubmorphs
	self runQuery: 'Algernon'.
	self
		assert: (self algerInstance itemList items
				allSatisfy: [:item | item isTitle
						ifTrue: [item submorphs size = 1]
						ifFalse: [item item algerType hasChildren
								ifTrue: [item submorphs size = 4]
								ifFalse: [item submorphs size = 3]]])