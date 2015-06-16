accessing
oldKeyboardFocus: aMorph

	oldFoci at: 1 put: (aMorph = self ifTrue: [nil]  ifFalse: [aMorph]).