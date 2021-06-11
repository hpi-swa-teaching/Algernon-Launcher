helpers
deleteClass
	| cl |
	cl := Smalltalk at: className ifAbsent: [^self].
	cl removeFromChanges; removeFromSystemUnlogged 