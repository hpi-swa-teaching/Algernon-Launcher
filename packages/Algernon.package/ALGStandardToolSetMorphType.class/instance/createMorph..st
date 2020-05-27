actions
createMorph: aTypeObject 
	| toolSetClass |
	toolSetClass := aTypeObject
				at: 3
				ifAbsent: [StandardToolSet].
	toolSetClass
		perform: (aTypeObject at: 2)