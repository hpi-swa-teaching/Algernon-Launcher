relevance
relevantAlgertemsFor: aString
	"Return a list of relevent Algertems for a given input. The list gets cached for each input.
	The cache is cleared when 	Algernon gets activated"
	| lcs items parts |
	lcs := aString asLowercase.
	items := self cache getItem: lcs. "TODO update fuzzy matches when removing characters"
	items
		ifNil: [parts := lcs subStrings: ' '.
			items := OrderedCollection new.
			parts size > 1
				ifTrue: [(ALGAction validVerbs includes: parts first)
						ifTrue: [| actionVerb itemName |
							"An action verb has been selected as a filter."
							actionVerb := parts first.
							itemName := parts second.
							items
								addAll: (self items
										select: [:each | (each isRelevantGiven: itemName)
												& (each supportsActionVerb: actionVerb)]).
							items
								do: [:each | each updateDefaultActionTo: actionVerb].
							items := sorter sort: items given: itemName]
						ifFalse: [| itemName childSearch childItems |
							"Search within top results"
							itemName := parts first.
							childSearch := parts second.
							items
								addAll: (self items
										select: [:each | each isRelevantGiven: itemName]).
							items := sorter sort: items given: itemName.
							childItems := OrderedCollection new.
							(items first: {items size. 3} min)
								do: [:item | 
									childItems addAll: item algertype algertemChildrenList.
									childItems
										addAll: (ALGActionItem createListFrom: item)].
							items := childItems
										select: [:each | each isRelevantGiven: childSearch].
							items := sorter sort: items given: childSearch]]
					ifFalse: [items
						addAll: (self items
								select: [:each | each isRelevantGiven: lcs]).
					items
						do: [:each | each defaultIndex: 1].
					items := sorter sort: items given: lcs]].
	self cache setItem: items at: lcs.
	^ items.