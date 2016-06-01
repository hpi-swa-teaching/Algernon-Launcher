comparison
initialsLessThan: anItem given: aLowercaseString

	| me other |
	me := self initials beginsWith: aLowercaseString.
	other := anItem initials beginsWith: aLowercaseString.
	(me & other not) ifTrue: [^true].
	(other & me not) ifTrue: [^false].
	^ #equals
