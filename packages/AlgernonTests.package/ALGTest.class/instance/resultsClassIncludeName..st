helpers
resultsClassIncludeName: aNameString 
	^ self algInstance itemList items
		anySatisfy: [:each | each item notNil
				and: [each item algerType typeName = 'Class'
						and: [each item name = aNameString]]]