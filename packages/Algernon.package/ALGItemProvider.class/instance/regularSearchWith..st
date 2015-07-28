filtering
regularSearchWith: aString

	| items |
	items := self items select: [ :each | each isRelevantGiven: aString ].
	items do: [ :each | each defaultIndex: 1 ].
	^ items