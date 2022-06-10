algertem lists
algertemList: algerInstance
	^ OrderedCollection with: (ALGWebSearchItem
				withAlgertype: (self with: algerInstance))
