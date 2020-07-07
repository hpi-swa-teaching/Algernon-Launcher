instance creation
createListFrom: anItem
	^ anItem algerActions collect: [ :anAction |
			(self createFrom: anAction)
				provider: anItem;
				yourself ]