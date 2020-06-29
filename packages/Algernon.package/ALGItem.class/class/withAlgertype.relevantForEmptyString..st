instance creation
withAlgertype: aType relevantForEmptyString: aBool

	| item |
	item := ALGItem new.
	item initializeWithAlgertype: aType.
	^ item