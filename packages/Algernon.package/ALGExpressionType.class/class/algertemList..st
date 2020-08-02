algertem lists
algertemList: algerInstance
	^ OrderedCollection with: (ALGExpressionItem
				withAlgertype: (self with: algerInstance)).
