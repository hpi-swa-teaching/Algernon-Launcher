filtering
searchForItems: aString 
	| items dynamicItems |
	items := self cache finalResultsAt: (self cacheKeyFor: aString).
	dynamicItems := self filteredDynamicItemsFor: aString asLowercase.
	items ifEmpty: [items := self filteredItemsFor: aString asLowercase.
			self cache allMatchedItemsAt: (self cacheKeyFor: aString) put: items.
			items := self processMatchedItems: items given: aString.
			self cache finalResultsAt: (self cacheKeyFor: aString) put: items].
	"items := self filteredItems: items for: aString."
	items := self processMatchedItems: (dynamicItems, items asOrderedCollection) given: aString.
	^ items