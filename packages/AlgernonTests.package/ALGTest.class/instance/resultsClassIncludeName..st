helpers
resultsClassIncludeName: aNameString 
	^ self items
		anySatisfy: [:each | each notNil
				and: [each algerType typeName = 'Class'
						and: [each name = aNameString]]]