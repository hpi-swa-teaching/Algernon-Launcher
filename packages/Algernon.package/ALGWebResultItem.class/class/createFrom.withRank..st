instance creation
createFrom: aWebResult withRank: aNumber

	| item type |
	type := ALGWebResultType newFor: aWebResult.
	item := self withAlgertype: type.
	item rank: aNumber.
	item numTimesSelected: 0.
	^ item