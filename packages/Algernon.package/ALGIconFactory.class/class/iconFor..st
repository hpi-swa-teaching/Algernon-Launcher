constants
iconFor: anItem

	| typeName |
	typeName := anItem icon.
	^ self getInstance loadIconFor: typeName