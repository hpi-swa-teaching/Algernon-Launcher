instance creation
createFrom: anAction
	| item type |
	type := ALGActionType newFor: anAction.
	item := ALGItem new.
	item algertype: type;
		algeractions: (OrderedCollection newFrom: {anAction});
		lowerCaseName: anAction name;
		numTimesSelected: (anAction numTimesSelected);
		isRelevantForEmptyString: true.
	^ item.