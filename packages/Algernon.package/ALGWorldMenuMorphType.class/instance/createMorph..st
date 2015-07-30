actions
createMorph: aTypeObject

	| arr |
	arr := aTypeObject at: 2.
	(arr at: 1) perform: (arr at: 2)