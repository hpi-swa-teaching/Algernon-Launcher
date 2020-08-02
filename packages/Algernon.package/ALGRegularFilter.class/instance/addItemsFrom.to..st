accessing
addItemsFrom: itemCollectionFrom to: itemCollectionTo
	| to |
	to := itemCollectionTo asSet.
	itemCollectionTo
		addAll: (itemCollectionFrom reject: [:each | to includes: each]).