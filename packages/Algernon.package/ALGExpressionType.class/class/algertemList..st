algertem lists
algertemList: algerInstance

	| algertems |
	algertems := OrderedCollection with: (ALGExpressionItem
				withAlgertype: (self with: algerInstance)).
	^ algertems
