as yet unclassified
findAndCreate: aString

	aString ifEmpty: [ ^ self ].
	(childrenDict at: aString first ifAbsent: [ childrenDict at: aString first put: ALGPrefixTreeNode new ])
		find: aString allButFirst