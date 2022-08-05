web
createWebResultItemsFrom: aJsonArray

	| webResults |
	
	webResults := OrderedCollection new.
	
	aJsonArray ifNil: [Exception signal: 'No results found!'].
	aJsonArray keysAndValuesDo: [:key :value | 
		webResults add: (ALGWebResultItem 
			createFrom: value 
			withRank: (key * -1))].
	^ webResults