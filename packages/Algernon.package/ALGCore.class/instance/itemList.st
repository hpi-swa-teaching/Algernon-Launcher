accessing
itemList

	itemList ifNil: [ self itemList: (ALGResultList newFrom: {} in: self) ].
	^ itemList