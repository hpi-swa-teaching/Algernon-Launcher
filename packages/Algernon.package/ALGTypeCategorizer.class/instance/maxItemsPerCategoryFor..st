accessing
maxItemsPerCategoryFor: anAlgerType

	(anAlgerType class maxItemsPerCategory ~= -1)
			ifTrue: [^ anAlgerType class maxItemsPerCategory]
			ifFalse: [^ self class maxItemsPerCategory]