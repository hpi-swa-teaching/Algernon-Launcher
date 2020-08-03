finding
findAndCreate: aString

	aString ifEmpty: [ ^ self ].
	(childrenDict at: aString first ifAbsent: [ childrenDict at: aString first put: self class new ])
		find: aString allButFirst