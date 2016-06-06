as yet unclassified
find: aString ifAbsent: aBlock

	aString ifEmpty: [ ^ self ].
	(childrenDict at: aString first ifAbsent: aBlock) find: aString allButFirst.