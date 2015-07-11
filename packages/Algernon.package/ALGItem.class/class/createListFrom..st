instance creation
createListFrom: aCollection
	| items |
	items := OrderedCollection new.
	aCollection do: [ :anAction | | item |
		item := self createFrom: anAction.
		items add: item ].
	^ items.