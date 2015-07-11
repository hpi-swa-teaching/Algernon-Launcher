list creation
createListOfAlgeractions
	| list  |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	list add: (ALGAction
				withName: 'do'
				rank: 1
				target: self
				selector: #do
				args: OrderedCollection new).
	^ list