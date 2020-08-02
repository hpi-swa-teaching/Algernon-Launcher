testing categories properties
testCategoriesInDescendingOrder

	| previousRank |
	previousRank := categories first rank.
	categories do: [ :anAlgercat |
		self assert: (anAlgercat rank <= previousRank).
		previousRank := anAlgercat rank ]