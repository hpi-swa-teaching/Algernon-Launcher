accessing
oldKeyboardFocus: aMorph

	self oldFoci at: 1 put: ((aMorph = self) ifTrue: [nil] ifFalse: [aMorph])