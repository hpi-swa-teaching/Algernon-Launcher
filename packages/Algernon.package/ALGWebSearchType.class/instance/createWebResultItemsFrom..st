web
createWebResultItemsFrom: aJsonArray

	| webResults |
	webResults := OrderedCollection new.
	
	aJsonArray ifNotNil: [aJsonArray keysAndValuesDo: [:key :value | 
		webResults add: (ALGWebResultItem 
			createFrom: value 
			withRank: (key * -1))]].
	
	^ webResults