mocking
recordCall: aMessage

	(self calls
		at: aMessage selector
		ifAbsentPut: [ OrderedCollection new ])
			add: aMessage