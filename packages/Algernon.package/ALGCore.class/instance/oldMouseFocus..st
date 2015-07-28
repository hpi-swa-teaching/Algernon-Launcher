accessing
oldMouseFocus: aMorph

	oldFoci at: 2 put: ((self submorphs includes: aMorph) ifTrue: [nil] ifFalse: [aMorph])
