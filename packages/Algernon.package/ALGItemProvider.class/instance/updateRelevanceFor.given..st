updating
updateRelevanceFor: aCollection given: aString

	aCollection do: [ :each | each isRelevantGiven: aString ]