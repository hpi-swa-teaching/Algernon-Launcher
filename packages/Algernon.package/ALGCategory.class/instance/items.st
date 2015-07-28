accessing
items

	items ifNil: [ self items: OrderedCollection new ].
	^ items