testing appereance
testListItemMorphSubmorphs
	self runQuery: 'Algernon'.
	self assert: (self itemMorphs
				allSatisfy: [:item | item isTitle
						ifTrue: [item submorphs size = 1]
						ifFalse: [item item algerType hasChildren
								ifTrue: [item submorphs size = 5]
								ifFalse: [item submorphs size = 4]]])