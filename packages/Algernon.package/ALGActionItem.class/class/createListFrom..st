instance creation
createListFrom: anItem
	^ (anItem algerActions reject: [ :anAction |
			anAction hidden]) 
			collect: [ :anAction |
			(self createFrom: anAction)
				provider: anItem;
				yourself ]