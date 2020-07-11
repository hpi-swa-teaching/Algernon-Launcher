actions
createMorph: aTypeObject

	| arr |
	arr := aTypeObject at: 2.
	arr first perform: (arr at: 2)