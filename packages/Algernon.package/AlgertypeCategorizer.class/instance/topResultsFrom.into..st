categorizing
topResultsFrom: anAlgertemList into: aDictionary
	"Extracts a fixed number of top results into a category."
	| maxIndex |
	(anAlgertemList size = 0)
		ifTrue: [ ^ aDictionary ].
	maxIndex := self class maxNumTopResults.
	(anAlgertemList size < self class maxNumTopResults)
		ifTrue: [ maxIndex := anAlgertemList size ].
	(1 to: maxIndex) do: [ :i |
		aDictionary
			at: self class topResults
			ifAbsentPut: [ OrderedCollection new ].
		(aDictionary at: self class topResults) add: (anAlgertemList at: i) ].
	^ aDictionary