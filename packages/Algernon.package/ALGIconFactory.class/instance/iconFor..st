loading
iconFor: anItem
	| typeName |
	(anItem isKindOf: ALGItem) ifFalse: [ ^ nil ].
	typeName := anItem algertype class name.
	(self hasIconFor: typeName)
		ifFalse: [ ^ nil ]
		ifTrue: [(self hasCachedIconFor: typeName)
					ifTrue: [ ^ self loadFromCacheFor: typeName ]
					ifFalse: [ ^ self loadFromFileFor: typeName ] ].