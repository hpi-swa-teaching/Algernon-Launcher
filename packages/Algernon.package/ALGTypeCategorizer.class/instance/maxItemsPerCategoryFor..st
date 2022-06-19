accessing
maxItemsPerCategoryFor: anAlgerType

	(anAlgerType maxItemsPerCategory ~= -1)
			ifTrue: [^ anAlgerType maxItemsPerCategory]
			ifFalse: [^ self class maxItemsPerCategory]