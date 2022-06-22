instance creation
createFrom: aJsonObject withRank: aNumber

	| item type |
	type := ALGWebResultType newFor: aJsonObject.
	item := self withAlgertype: type.
	item rank: aNumber.
	item numTimesSelected: 0.
	^ item