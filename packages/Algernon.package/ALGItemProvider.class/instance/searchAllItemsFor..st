filtering
searchAllItemsFor: aString 
	| items dynamicItems |
	items := self getCachedStaticItemsFor: aString.
	items ifEmpty: [ items := self searchStaticItemsFor: aString ].
	
	self isOnDefaultSearchLevel 
		ifTrue: [	dynamicItems := self searchDynamicItemsFor: aString.
				items := self processMatchedItems: (dynamicItems, items asOrderedCollection) given: aString ].
	
	^ items