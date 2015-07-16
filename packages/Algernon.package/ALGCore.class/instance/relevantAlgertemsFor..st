lists
relevantAlgertemsFor: aString
	"Return a list of relevent Algertems for a given input. The list gets cached for each input.
	The cache is cleared when 	Algernon gets activated"
	| lcs items parts actions actionItems |
	lcs := aString asLowercase.

	items := self itemsCache getItem: lcs.
	items ifNil: [
		parts := lcs subStrings: ' '.
		items := OrderedCollection new.
		(parts size > 1)
			ifTrue: [	| numItems | actions := OrderedCollection new.
				items addAll: (algertems select: [:each | each isRelevantGiven: parts first]).
				items := sorter sort: items given: parts first.
				(items size < ALGTopCategorizer maxNumTopResults)
					ifTrue: [ numItems := items size ]
					ifFalse: [ numItems := ALGTopCategorizer maxNumTopResults ].
				(items first: numItems) do: [ :item |
							actionItems := ALGActionItem createListFrom: item.
							actions addAll: actionItems ].
				items addAll: actions.
				items := sorter sort: items given: parts second.
				self itemsCache setItem: items at: lcs. ]
			ifFalse: [ items addAll: (algertems select: [:each | each isRelevantGiven: lcs]).
				items := sorter sort: items given: lcs.
				self itemsCache setItem: items at: lcs. ].
		].

	^ items.