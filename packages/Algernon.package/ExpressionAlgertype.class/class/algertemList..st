algertem lists
algertemList: textField
	| algertems |
	algertems := OrderedCollection with: (ExpressionAlgertem
				withAlgertype: (self with: textField)).
	^ algertems