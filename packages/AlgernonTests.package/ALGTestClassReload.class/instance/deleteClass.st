helpers
deleteClass
	| cl |
	cl := Smalltalk at: self className ifAbsent: [^self].
	cl removeFromChanges; removeFromSystemUnlogged 