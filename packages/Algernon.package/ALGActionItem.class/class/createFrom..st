instance creation
createFrom: anAction

	| item type |
	type := ALGActionType newFor: anAction.
	item := self withAlgertype: type.
	item numTimesSelected: anAction numTimesSelected.
	^ item