updating
updateDefaultItemsIfNecessary

	(TimeStamp current > (self lastDefaultItemUpdateTimeStamp plusSeconds: self defaultItemUpdateInterval))
		ifTrue: [ self initializeItems]