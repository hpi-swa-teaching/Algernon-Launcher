comparison
rankLessThan: anItem

	(self rank > anItem rank) ifTrue: [^true].
	(self rank < anItem rank) ifTrue: [^false].
	^ nil
	
