algertem lists
algertemList
	| algertems |
	algertems := self additionalToolEntries.
	(StandardToolSet menuItems
		reject: [:item | item = #-])
		do: [:item | algertems
				add: (ALGItem
						withAlgertype: (self with: item))].
	^ algertems
	
