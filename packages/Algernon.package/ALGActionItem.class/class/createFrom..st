instance creation
createFrom: anAction

	| item type |
	type := ALGActionType newFor: anAction.
	item := self new.
	item algerType: type;
		algerActions: (OrderedCollection newFrom: {anAction});
		lowerCaseName: anAction name;
		numTimesSelected: anAction numTimesSelected;
		isRelevantForEmptyString: true.
	^ item