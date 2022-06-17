web
createWebResultItemsFrom: aJsonArray

	| webResults |
	webResults := OrderedCollection new.
	aJsonArray keysAndValuesDo: [:key :value | webResults add: (ALGWebResultItem createFrom: (value at: 'title') asString withRank: (key * -1))].
	
	^ webResults