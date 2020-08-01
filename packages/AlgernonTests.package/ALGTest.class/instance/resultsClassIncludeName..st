helpers
resultsClassIncludeName: aNameString 
	^ self items
		anySatisfy: [:each | each item notNil
				and: [each item algerType typeName = 'Class'
						and: [each item name = aNameString]]]