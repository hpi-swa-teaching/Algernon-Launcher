categorizing
extractFrom: anAlgertemList
	"Extracts a fixed number of top results into a category."
	| category maxIndex |
	(anAlgertemList size = 0)
		ifTrue: [ ^ self ].
	category := ALGCategory newForTopResults.
	maxIndex := self class maxNumTopResults.
	(anAlgertemList size < maxIndex)
		ifTrue: [ maxIndex := anAlgertemList size ].
	(1 to: maxIndex) do: [ :i |
		category add: (anAlgertemList at: i) ].
	^ category.