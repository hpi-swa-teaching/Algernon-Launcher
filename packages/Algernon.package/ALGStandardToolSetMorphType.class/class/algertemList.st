algertem lists
algertemList
	| algertems |
	algertems := self additionalToolEntries
				addAll: ((StandardToolSet menuItems
						reject: [:item | item = #-])
						collect: [:item | ALGItem
								withAlgertype: (self with: item)]).
	^ algertems