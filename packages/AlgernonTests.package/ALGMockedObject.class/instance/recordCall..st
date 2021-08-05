mocking
recordCall: aMessage

	| callCollection |
	callCollection := self calls
		at: aMessage selector
		ifAbsentPut: [ OrderedCollection new ].
	callCollection add: aMessage