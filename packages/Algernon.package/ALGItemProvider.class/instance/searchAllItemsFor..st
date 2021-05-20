filtering
searchAllItemsFor: aString 
	| items dynamicItems |
	items := self getCachedStaticItemsFor: aString.
	items ifEmpty: [ items := self searchStaticItemsFor: aString ].
	
	self isDefaultSearchLevel 
		ifTrue: [	dynamicItems := self searchDynamicItemsFor: aString asLowercase.
				items := self processMatchedItems: (dynamicItems, items asOrderedCollection) given: aString.].
	
	^ items