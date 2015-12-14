filtering
filter: anItemCollection given: aStringCollection

	| items keyword |
	keyword := aStringCollection first.
	items := anItemCollection select: [ :each | each isRelevantGiven: keyword ].
	items do: [ :each | each defaultIndex: 1 ].
	^ items