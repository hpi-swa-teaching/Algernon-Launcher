list creation
createListOfAlgeractions
	| list  |
	list := SortedCollection
				sortBlock: [:a :b | a rank > b rank].
	"aClass := self typeObject."
	list
		add: (ALGAction
				withName: 'do it'
				rank: 2
				target: self
				selector: #doit
				args: OrderedCollection new).
	list
		add: (ALGAction
				withName: 'print it'
				rank: 3
				target: self
				selector: #printit
				args: OrderedCollection new).
	list
		add: (ALGAction
				withName: 'inspect it'
				rank: 1
				target: self
				selector: #inspectit
				args: OrderedCollection new).
	^ list