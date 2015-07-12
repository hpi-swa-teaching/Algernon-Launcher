lists
relevantAlgertemsFor: aString
	"Return a list of relevent Algertems for a given input. The list gets cached for each input.
	The cache is cleared when 	Algernon gets activated"
	| lcs items parts |
	lcs := aString asLowercase.
	parts := lcs subStrings: ' '.
	items := OrderedCollection new.
	"TODO refactor results and caching into separate class"
	(parts size > 1)
		ifTrue: [ | actions |
				actions := OrderedCollection new.
				items addAll: (algertems select: [:each | each isRelevantGiven: parts first]).
				items := sorter sort: items given: parts first.
				(items first: ALGTopCategorizer maxNumTopResults) do: [ :item | | actionItems |
							actionItems := ALGItem createListFrom: item algeractions.
							actions addAll: actionItems ].
				items addAll: actions.
				items := sorter sort: items given: parts second.
				^ items ]
		ifFalse: [ items addAll: (algertems select: [:each | each isRelevantGiven: lcs]).
				^ sorter sort: items given: lcs ].
	"TODO proper caching"
	"self cachedResults at: lcs
		ifPresent: [ :terms | ^ terms]
		ifAbsent: [lcs size <= 1 ifTrue: [self limitedAlgertems: algertems].
			self limitedAlgertems: (self limitedAlgertems select: [:each | each isRelevantGiven: lcs]).
			self limitedAlgertems: (sorter sort: self limitedAlgertems given:aString).
			self cachedResults at: lcs put: self limitedAlgertems.
			^ self limitedAlgertems ]."