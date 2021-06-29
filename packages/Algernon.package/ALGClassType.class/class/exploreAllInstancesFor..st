helpers
exploreAllInstancesFor: aClass

	| all allSize prefix |
	all := aClass allInstances.
	(allSize := all size) = 0 ifTrue: 
		[^ self inform: 'There are no instances of ', aClass name].
	prefix := allSize = 1
		ifTrue: 	['The lone instance']
		ifFalse:	['The ', allSize printString, ' instances'].

	all asArray exploreWithLabel: (prefix, ' of ', aClass name)