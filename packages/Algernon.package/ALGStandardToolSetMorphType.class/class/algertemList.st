algertem lists
algertemList
	| algertems |
	algertems := self additionalToolEntries, ((StandardToolSet menuItems
						reject: [:item | item = #-])
						collect: [:item | ALGItem
								withAlgertype: (self with: item)]).
	self halt.
	^ algertems