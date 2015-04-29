instance creation
withAlgertype: aType relevantForEmptyString: aBool
	|item|
	item := Algertem new.
	item initializeWithAlgertype: aType.
	item isRelevantForEmptyString: aBool.
	^item.