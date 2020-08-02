instance creation
withAlgertype: aType relevantForEmptyString: aBool

	| item |
	item := ALGItem new.
	item updateAlgertype: aType.
	^ item