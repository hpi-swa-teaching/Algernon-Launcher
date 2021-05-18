filtering
searchForItems: aString 
	| items dynamicItems |
	items := self getCachedStaticItemsFor: aString.
	items ifEmpty: [ items := self searchStaticItemsFor: aString ].
	
	dynamicItems := self filteredDynamicItemsFor: aString asLowercase.
	items := self processMatchedItems: (dynamicItems, items asOrderedCollection) given: aString.
	^ items