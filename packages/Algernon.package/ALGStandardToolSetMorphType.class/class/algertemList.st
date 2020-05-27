algertem lists
algertemList
	| algertems |
	algertems := OrderedCollection
				with: (ALGItem
						withAlgertype: (self with: #('Browser', #openClassBrowser))).
	(StandardToolSet menuItems
		reject: [:item | item = #-])
		do: [:item | algertems
				add: (ALGItem
						withAlgertype: (self with: item))].
	^ algertems
	
