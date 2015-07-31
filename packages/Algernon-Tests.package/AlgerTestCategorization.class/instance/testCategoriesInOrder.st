testing
testCategoriesInOrder
	"Ensure categories are sorted in descending order."
	| previousRank |
	previousRank := categories first rank.
	categories do: [ :anAlgercat |
		self assert: (anAlgercat rank <= previousRank).
		previousRank := anAlgercat rank ]