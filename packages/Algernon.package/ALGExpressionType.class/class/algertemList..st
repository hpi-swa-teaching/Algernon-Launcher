algertem lists
algertemList: textField

	| algertems |
	algertems := OrderedCollection with: (ALGExpressionItem
				withAlgertype: (self with: textField)).
	^ algertems